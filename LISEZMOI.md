![Ansible](https://img.shields.io/badge/ansible-automation-red)
![Shell](https://img.shields.io/badge/shell-bash-lightgrey)

# 🧰 Proxmox (PVE) – Maintenance & Ansible Playbooks

Automatisation de la **mise à jour des VM et LXC** sur un serveur **Proxmox VE** à l’aide d’Ansible et de scripts shell.

---

## 📁 Arborescence du projet

```text
.
├─ ansible.cfg
├─ playbooks/
│  ├─ pve.upgrade.yml
│  └─ pve.proxmox.yml
├─ scripts/
│  └─ update.sh
├─ .gitignore
├─ README.md
```
Ce dépôt contient :
- des playbooks Ansible pour administrer / mettre à jour les VM et LXC,
- un script de maintenance pour automatiser certaines tâches.

## ⚙️ Pré-requis
- Ansible >= 2.14 (idéalement 2.15+)
- Accès SSH aux nœuds PVE
- Clés SSH configurées sur chaque VM ou LXC

## Exemple de ficher VAULT
```text.
ansible-vault create vault/proxmox_secrets.vault
```

```text.
url: "https://10.0.0.1:8006"
user: "your user"
token_id: "your token name"
proxmox_token_secret: "your token secret"
```

## 🗂️ Structure des dossiers
- `playbooks/` : playbooks Ansible
- `scripts/` : script shell de lancement des playbooks

## 🚀 Lancement du script
chmod 700 script/update.sh
./scripts/update.sh
