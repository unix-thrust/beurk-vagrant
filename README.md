# Unix-Thrust Vagrant boxes #
Unix-Thrust Vagrant boxes for automatic testing

## Multiple branches ##

- **dev** : usefull for the developpement of the Unix-Thrust projects
- **project branch** : specific commit for an Unix-Thrust project

## Requirements ##
- [Virtualbox](https://www.virtualbox.org)
- [Vagrant](http://docs.vagrantup.com/v2/installation/)
- [Ansible](http://docs.ansible.com/intro_installation.html)

## Quick start ##
```
# clone unix-vagrant and its submodules (which are the available projects)
git submodule update --init --recursive https://github.com/unix-thrust/unix-vagrant.git
```

The VM can communicate between us in the private network 192.168.0.0/32
Available VMs:
- debian7 (wheezy)
- debian8 (jessie)
- ubuntu (server edition trusty64)
- fedora21 (server edition)
- centos (v7.0)
- freebsd (v10)
(the complete list of available VMs can be found in the `Vagrantfile`)

### Launch VM ###
```bash
# Launch all VMs:
vagant up

# Launch a specific VMs:
vagrant up [name]

# Exemple:
vagrant up debian7
```

### Connect on a VM with ssh ###
```bash
vagrant ssh debian7
```
Available projects are stored as submodules in the `~/project` shared VM directory

### Provisioning a VM with ansible ###
```bash
# NOTE: the VM is automatically provisionned on the first 'vagrant up'
vagrant provision debian7
```

### Halt VM ###
```bash
# Halt all VM:
vagant halt

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
