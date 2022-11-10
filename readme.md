# Vadim's Dotfiles


## Github

```
# generate ssh key
ssh-keygen -t ed25519 -C "name@example.com"

# add it to the ssh agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# upload it to github
cat ~/.ssh/id_ed25519.pub

# test github connection
ssh -T git@github.com
```


## Ansible

### OSX

```shell
# install ansible
sudo pip3 install ansible

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# run the playbook
ansible-playbook playbook.osx.yml -i local.inventory
```

### Ubuntu

```shell
# install base packages
sudo apt install git openssh-server

# install ansible
sudo apt install ansible

# run the playbook
ansible-playbook playbook.ubuntu.yml -i local.inventory --ask-become-pass
```
