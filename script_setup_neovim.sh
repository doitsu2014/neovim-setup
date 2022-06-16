git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo 'Copying neovim-setup nvim folder'
mkdir -p ~/.config/nvim
cp -R ./nvim/* ~/.config/nvim/
