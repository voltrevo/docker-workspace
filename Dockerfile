FROM ubuntu:17.10

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    curl \
    wget \
    git \
    vim \
    zsh \
    tmux \
    default-jdk

ADD ./docker-workspace-init.sh /tmp/.
RUN /tmp/docker-workspace-init.sh

ADD .vimrc /root/.vimrc
ADD .zshrc /root/.zshrc

RUN vim +PlugInstall +qall