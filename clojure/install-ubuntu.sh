# Install Java
sudo apt-get install openjdk-8-jre-headless

# Get Leiningen
sudo wget -P /usr/bin/ https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein

# Go to /usr/bin
cd /usr/bin

# Make executable
sudo chmod a+x lein

# Run to install
lein
