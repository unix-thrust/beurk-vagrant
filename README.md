# beurk-vagrant
BEURK Vagrant box for automatic testing

## Requirements

You need ansible:
```
pip install ansible
```
ansible debian7 -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory -m setup -k --user vagrant
