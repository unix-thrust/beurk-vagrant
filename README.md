# BEURK Vagrant #
BEURK Vagrant box for automatic testing

## Requirements ##
- [Virtualbox](https://www.virtualbox.org)
- [Vagrant](http://docs.vagrantup.com/v2/installation/)
- [Ansible](http://docs.ansible.com/intro_installation.html)

## Quick start ##
The VM can communicate between us in the private network 192.168.0.0/32
Available VMs:
- debian7 (wheezy)
- debian8 (jessie)
- ubuntu (server edition trusty64)
- fedora21 (server edition)
- centos (v7.0)
- freebsd (v10)

### Launch VM ###
```bash
# Launch all VM:
vagant up

# Launch a specific VM:
vagrant up [name]

# Exemple:
vagrant up debian7
```

### Connect on a VM with ssh ###
```bash
vagrant ssh debian7
```

### Provisioning a VM with ansible ###
```bash
# The provision of the VM is automaticaly done when you do `vagrant up`
# the first time.
vagrant provision debian7
```

### Halt VM ###
```bash
# Halt all VM:
vagant up

# Halt a specific VM:
vagrant halt debian7
```

Enjoy :)

## Debug with ansible ##
Vagrant auto-generate a inventory file in .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory
We can use this file for debug purpose with ansible:
```
# Get information discovered from the VM:
ansible debian7 -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory -m setup -k --user vagrant
```
