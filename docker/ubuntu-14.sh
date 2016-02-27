# Installing Docker on Ubuntu 14.04
# As per guide on https://docs.docker.com/engine/installation/linux/ubuntulinux

sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates -y

# Add new PGP key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Add repo to /etc/apt/sources.list.d./docker.list
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' >> ~/docker.list
sudo mv ~/docker.list /etc/apt/sources.list.d/docker.list

# Run update again
sudo apt-get update -y

# Purge old repo if exists
sudo apt-get purge lxc-docker

# Update apt cache
sudo apt-cache policy docker-engine

# Install recommended package
sudo apt-get install linux-image-extra-$(uname -r) -y
sudo apt-get install apparmor -y

# Install Docker
sudo apt-get install docker-engine -y
sudo service docker start
sudo docker run hello-world

# Create Docker group and add your user, user name at the end
sudo usermod -aG docker vadim
