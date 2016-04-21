# Get updates
sudo apt get update -y

# Download Go binary
curl -O https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz

# Un tar
tar -xvf go1.6.linux-amd64.tar.gz

# Move to $PATH
sudo mv go /usr/local

# Add path to profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile

# Restart the Shell
exec $SHELL
