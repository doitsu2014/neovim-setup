#!/bash/sh
echo "************************************************************************************************************************************************************************"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ******** **"
echo "*                                                                        Downloading dependencies                                                                     **"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ******** **"
echo "************************************************************************************************************************************************************************"

if [ "$(uname)" == "Darwin" ]; then
  brew install curl
  brew install git
  brew install python python3
  brew install zip unzip
  brew install tree-sitter
  brew install luajit
  brew install rg fd
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # this if statement is used to install dependency packages of ubuntu which has the version > 16.x.x
  sudo apt update
  sudo apt-get install libtool autoconf automake cmake libncurses5-dev g++ build-essential -y
  sudo apt-get install zip unzip -y
  sudo apt-get install python-dev python-pip python3-dev python3-pip
  sudo apt-get install apt-get install ripgrep fd-find -y
  sudo apt-get install luajit -y
  sudo apt-get install xclip -y
fi

sudo bash ./script_download_neovim.sh

# Rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# cargo install tree-sitter-cli
# sudo npm install -g yarn
