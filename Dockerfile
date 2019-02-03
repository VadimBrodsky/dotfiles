# https://github.com/thornycrackers/docker-neovim/blob/master/Dockerfile
FROM ubuntu:18.04

# Better terminal support
ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Update and install
RUN apt-get update && apt-get install -y \
      htop \
      fish \
      curl \
      wget \
      git \
      software-properties-common \
      python-dev \
      python-pip \
      python3-dev \
      python3-pip \
      locales

# Locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Other Repos
RUN add-apt-repository ppa:neovim-ppa/stable
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN apt-get update && apt-get install -y \
      neovim \
      nodejs \
      yarn

# Install Neovim plugins
RUN nvim -i NONE -c PlugInstall -c quitall > /dev/null 2>&1


CMD ["/usr/bin/fish"]

