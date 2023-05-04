mkdir -p download
curl -L https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb > nvim-linux64.deb
sudo dpkg -i --force-overwrite ./nvim-linux64.deb
