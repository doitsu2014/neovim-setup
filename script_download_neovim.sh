VERSION=v0.11.0

NVIM_TAG=nvim-linux-x86_64.tar.gz
NVIM_UNZIP_NAME=nvim-linux-x86_64

if [ "$(uname)" == "Darwin" ]; then
  NVIM_TAG=nvim-macos-arm64.tar.gz
  NVIM_UNZIP_NAME=nvim-macos-arm64
fi

echo "create folder downloads $HOME/downloads"
mkdir -p $HOME/downloads
echo "download and install neovim" $VERSION
curl -L https://github.com/neovim/neovim/releases/download/$VERSION/$NVIM_TAG >$HOME/downloads/$NVIM_TAG

echo "Change directory to $HOME/downloads"
cd $HOME/downloads

echo "Extract $NVIM_TAG"
tar xzf $NVIM_TAG
# tar xzvf $NVIM_TAG # verbosely

echo "Remove if $HOME/$NVIM_UNZIP_NAME does exist"
rm -rf $HOME/$NVIM_UNZIP_NAME

mv $NVIM_UNZIP_NAME $HOME/
echo "Installed nvim"
echo 'export PATH=$PATH'":$HOME/$NVIM_UNZIP_NAME/bin" >>~/.profile
echo 'export PATH=$PATH'":$HOME/$NVIM_UNZIP_NAME/bin" >>~/.zshrc
