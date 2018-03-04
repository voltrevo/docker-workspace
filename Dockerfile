FROM ubuntu

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    zsh

RUN chsh -s /bin/zsh

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
