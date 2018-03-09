# zsh
chsh -s /bin/zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
rm -f ~/.zsh_history
ln -s /docker-workspace-share/.zsh_history ~/.zsh_history

# ssh
ln -s /docker-workspace-share/.ssh ~/.ssh

# vim
mkdir ~/.vim-backups

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
