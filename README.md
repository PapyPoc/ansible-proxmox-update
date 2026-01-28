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
- des playbooks Ansible pour administrer / mettre à jour Proxmox VE,
- un script de maintenance pour automatiser certaines tâches.

## Pré-requis
- Ansible >= 2.14 (idéalement 2.15+)
- Accès SSH aux nœuds PVE
- Clés SSH configurées (recommandé)

## Structure
- `playbooks/` : playbooks Ansible
- `scripts/` : scripts utilitaires (shell)

