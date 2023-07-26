sudo dnf install neovim python3-flake8 pylint python3-neovim
mkdir -p ~/.config/nvim
cp init.vim  ~/.config/nvim
cp -r nvim ~/.local/share/
cp -r .vim ~/
cp .vimrc ~/
cd scripts
make install
cd -
git pull https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd -
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/font "'Monospace 13'"
nvim -c 'PlugClean' -c 'PlugInstall'  -c ':PlugUpgrade' -c 'PlugUpdate' -c 'qall!'
