#!/usr/bin/env bash
set -euo pipefail

WORKDIR="/home/poc/ansible/upgrade"
VAULT_FILE="$WORKDIR/proxmox_secrets.vault"
INV="$WORKDIR/pve.proxmox.yaml"
PLAY="$WORKDIR/pve.upgrade.yml"
cd "$WORKDIR"

echo "[1/3] Load Proxmox vars from vault into env"
VAULT_CONTENT="$(ansible-vault view "$VAULT_FILE" --vault-id @prompt)"
export PROXMOX_URL="$(printf '%s\n' "$VAULT_CONTENT" | sed -n 's/^[[:space:]]*url:[[:space:]]*//p' | sed 's/^["'\'']\(.*\)["'\'']$/\1/' | head -n1)"
export PROXMOX_USER="$(printf '%s\n' "$VAULT_CONTENT" | sed -n 's/^[[:space:]]*user:[[:space:]]*//p' | sed 's/^["'\'']\(.*\)["'\'']$/\1/' | head -n1)"
export PROXMOX_TOKEN_ID="$(printf '%s\n' "$VAULT_CONTENT" | sed -n 's/^[[:space:]]*token_id:[[:space:]]*//p' | sed 's/^["'\'']\(.*\)["'\'']$/\1/' | head -n1)"
export PROXMOX_TOKEN_SECRET="$(printf '%s\n' "$VAULT_CONTENT" | sed -n 's/^[[:space:]]*proxmox_token_secret:[[:space:]]*//p' | sed 's/^["'\'']\(.*\)["'\'']$/\1/' | tr -d '\r\n' | head -n1)"
export PROXMOX_URL PROXMOX_USER PROXMOX_TOKEN_ID PROXMOX_TOKEN_SECRET
# Checks
for v in PROXMOX_URL PROXMOX_USER PROXMOX_TOKEN_ID PROXMOX_TOKEN_SECRET; do
  if [[ -z "${!v:-}" ]]; then
    echo "ERROR: $v is empty" >&2
    exit 1
  fi
done

echo "[2/3] Proxmox snapshots (retention=2) + upgrade"
ansible-playbook -i "$INV" "$PLAY"

echo "[3/3] Done."
