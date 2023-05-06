#!/bash/sh
echo "************************************************************************************************************************************************************************"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ******** **"
echo "*                                                                        Downloading dependencies                                                                     **"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ******** **"
echo "************************************************************************************************************************************************************************"

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

if [ "$(uname)" == "Darwin"  ]; then
    brew install curl
    brew install git
    brew install python python3
    # brew install node
    brew install zip unzip
    # neovim 0.8.x
    brew install tree-sitter 
    brew install luajit 
    brew install neovim
    brew install rg fd


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    # this if statement is used to install dependency packages of ubuntu which has the version > 16.x.x
    sudo apt update
    sudo apt-get install libtool autoconf automake cmake libncurses5-dev g++ build-essential -y
    sudo apt-get install curl -y
    sudo apt-get install git -y
    sudo apt-get install nodejs npm -y
    sudo apt-get install zip unzip -y
    sudo apt-get install python-dev python-pip python3-dev python3-pip
    sudo apt-get install apt-get install ripgrep fd-find -y

    # neovim 0.8.x
    sudo apt-get install luajit -y
    sudo bash ./script_download_neovim.sh
fi

cargo install tree-sitter-cli
sudo npm install -g yarn
