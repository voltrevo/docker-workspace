# zsh
chsh -s /bin/zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
rm -f /root/.zsh_history
ln -s /root/.config/docker-workspace/.zsh_history /root/.zsh_history

# git
ln -s /root/.config/docker-workspace/.gitconfig /root/.gitconfig

# ssh
ln -s /root/.config/docker-workspace/.ssh /root/.ssh

# vim
mkdir /root/.vim-backups

curl -fLo /root/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node

# elm
npm install -g elm elm-format elm-test elm-oracle --unsafe
