VERSION=v0.9.5
mkdir -p download
echo 'download and install neovim' $VERSION
curl -L https://github.com/neovim/neovim/releases/download/$VERSION/nvim-linux64.tar.gz > nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv nvim-linux64 /usr/bin/
# echo 'export PATH=$PATH/usr/bin/nvim-linux64/bin/nvim' > ~/.profile
# source ~/.profile
# sudo dpkg -i --force-overwrite ./nvim-linux64.deb
