# Install Dependencies

## Ubuntu
# sudo apt-get install curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

## Fedora
sudo dnf install openssl-devel readline-devel zlib-devel sqlite-devel

# Install Rbevn
# https://github.com/sstephenson/rbenv#installation
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Restart Shell
exec $SHELL

# Test Rbenv
type rbenv
#=> "rbenv is a function"

# Ruby-Build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install Ruby
rbenv install -l
rbenv install 2.2.4
rbenv global 2.2.4
rbenv rehash

# Disable Documentation for Gems
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

# Install Bunder
gem install bundler
