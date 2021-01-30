install ansible 

## OSX

```shell
# install ansible
sudo pip3 install ansible

# install homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 

# run the playbook
ansible-playbook playbook.osx.yml -i local.inventory
```

## Ubuntu

```shell
# install ansible
sudo apt install ansible

# run the playbook
ansible-playbook playbook.ubuntu.yml -i local.inventory --ask-become-pass
```
