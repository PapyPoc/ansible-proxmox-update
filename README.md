# Proxmox (PVE) - Maintenance & Ansible Playbooks

Mise à jour des VM et LXC d'un serveur Proxmox
## Arborescence
.

├─ ansible.cfg

├─ playbooks/

│  ├─ pve.upgrade.yml

│  └─ pve.proxmox.yml

├─ scripts/

│  └─ maintenance.sh

├─ inventories/

│  └─ hosts.ini

├─ .gitignore

├─ README.md

└─ .github/workflows/lint.yml

Ce dépôt contient :
- des playbooks Ansible pour administrer / mettre à jour Proxmox VE,
- un script de maintenance pour automatiser certaines tâches.

## Pré-requis
- Ansible >= 2.14 (idéalement 2.15+)
- Accès SSH aux nœuds PVE
- Clés SSH configurées (recommandé)

## Structure
- `playbooks/` : playbooks Ansible
- `scripts/` : scripts utilitaires (shell)

