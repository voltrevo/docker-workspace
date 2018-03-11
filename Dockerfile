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
    default-jdk \
    openssh-server

ADD ./docker-workspace-init.sh /tmp/.
RUN /tmp/docker-workspace-init.sh

ADD .vimrc /root/.vimrc
ADD .zshrc /root/.zshrc

RUN vim +PlugInstall +qall

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
