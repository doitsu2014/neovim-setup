VERSION=v0.8.3

mkdir -p download
echo 'download and install neovim' $VERSION
curl -L https://github.com/neovim/neovim/releases/download/$VERSION/nvim-linux64.deb > nvim-linux64.deb
sudo dpkg -i --force-overwrite ./nvim-linux64.deb
