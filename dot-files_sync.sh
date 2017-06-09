#! /bin/sh
ln -snf ~/dot-files_meijin/.vim/vimrcAutoload ~/.vim/
ln -snf ~/dot-files_meijin/.vim/colors ~/.vim/
ln -sf ~/dot-files_meijin/.vimrc ~/.vimrc
ln -sf ~/dot-files_meijin/.tmux.conf ~/.tmux.conf
ln -sf ~/dot-files_meijin/.bashrc ~/.bashrc
ln -sf ~/dot-files_meijin/.zshrc ~/.zshrc

filename=~/dot-files_meijin/.vimignore
cat ${filename} | while read line
do
  rm ~/dot-files_meijin/.vim/vimrcAutoload/${line}
done

source ~/.bashrc
