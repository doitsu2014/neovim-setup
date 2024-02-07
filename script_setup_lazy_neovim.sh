TIMESTAMP=$(date +%Y%m%d_%H%M%S)
mv ~/.config/nvim ~/.config/nvim.$TIMESTAMP.bak
mv ~/.local/share/nvim ~/.local/share/nvim.$TIMESTAMP.bak

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

bash script_setup_lazy_neovim_plugins.sh
