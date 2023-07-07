sudo dnf install neovim python3-flake8 pylint 
mkdir -p ~/.config/nvim
cp init.vim  ~/.config/nvim
cp -r nvim ~/.local/share/
cp -r .vim ~/
cp .vimrc ~/
cd scripts
make install
cd -
nvim -c 'PlugInstall' -c 'qall!'
