mkdir -p downloads
cd downloads
rm *
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb nvim-linux64.deb

sudo apt install nvim-linux64.deb
