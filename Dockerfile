FROM ubuntu

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    zsh \
    tmux

ADD ./docker-workspace-init.sh /tmp/.
RUN /tmp/docker-workspace-init.sh

ADD .vimrc /root/.vimrc
ADD .zshrc /root/.zshrc

RUN vim +PlugInstall +qall