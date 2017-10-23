#! /bin/sh
ln -snf ~/dot-files_meijin/.vim/vimrcAutoload ~/.vim/
ln -snf ~/dot-files_meijin/.vim/colors ~/.vim/
ln -sf ~/dot-files_meijin/.vimrc ~/.vimrc
ln -sf ~/dot-files_meijin/.tmux.conf ~/.tmux.conf
ln -sf ~/dot-files_meijin/.bashrc ~/.bashrc
ln -sf ~/dot-files_meijin/.zshrc ~/.zshrc

for name in ~/dot-files_meijin/.vim/vimrcAutoload/*.orig; do
    mv $name ${name%.orig}
done

filename=~/dot-files_meijin/.vimignore
cat ${filename} | while read line
do
    mv ~/dot-files_meijin/.vim/vimrcAutoload/${line} ~/dot-files_meijin/.vim/vimrcAutoload/${line}.orig
done

source ~/.zshrc
