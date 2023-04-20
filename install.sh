mkdir -p ~/.config/nvim
cp init.vim  ~/.config/nvim
cp -r nvim ~/.local/share/
cp -r .vim ~/
cp .vimrc ~/
cd scripts
make install
