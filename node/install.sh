# install nvm
# https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
exec $SHELL

# install node.js
nvm install stable
nvm alias default stable

## Usage
# nvm install 5.0
# nvm use 5.0
