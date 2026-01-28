# 🧰 Proxmox (PVE) – Maintenance & Ansible Playbooks

Automating **VM and LXC updates** on a **Proxmox VE** server using Ansible and shell scripts.

---

## 📁 Project tree structure

```text.

├─ ansible.cfg
├─ playbooks/
│  ├─ pve.upgrade.yml
│  └─ pve.proxmox.yml
├─ scripts/
│  └─ update.sh
├─ .gitignore
├─ README.md
```
This repository contains:
- Ansible playbooks to administer/update VMs and LXCs,
- a maintenance script to automate certain tasks.

## ⚙️ Prerequisites
- Ansible >= 2.14 (ideally 2.15+)
- SSH access to PVE nodes
- SSH keys configured on each VM or LXC

## 🗂️ Folder structure
- `playbooks/`: Ansible playbooks
- `scripts/`: shell script for launching playbooks

## 🚀 Launching the script
chmod 700 script/update.sh
./scripts/update.sh
