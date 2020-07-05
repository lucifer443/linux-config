VIM_HOME=$PWD
cd $HOME
rm -rf .vim*
ln -s $VIM_HOME/.vimrc .
mkdir .vim
cd .vim
ln -s $VIM_HOME/.vim/.vimrc* .
ln -s $VIM_HOME/ctags-exuberant .
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
