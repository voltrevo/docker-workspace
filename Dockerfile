FROM ubuntu:17.10

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    curl \
    wget \
    git \
    vim \
    zsh \
    tmux

RUN apt-get install -y \
    haskell-platform \
    mono-devel \
    pkg-config \
    zip \
    g++ \
    zlib1g-dev \
    unzip \
    python

RUN apt-get install -y \
    default-jdk

ADD ./docker-workspace-init.sh /tmp/.
RUN /tmp/docker-workspace-init.sh

ADD .vimrc /root/.vimrc
RUN vim +PlugInstall +qall

ADD .zshrc /root/.zshrc
