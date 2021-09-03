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
    brew install node
    brew install zip unzip
    # neovim 0.5.x
    brew install tree-sitter 
    brew install luajit 
    brew install neovim
    brew install ninja

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    # this if statement is used to install dependency packages of ubuntu which has the version > 16.x.x
    sudo apt update
    sudo apt-get install curl -y
    sudo apt-get install git -y
    sudo apt-get install build-essential cmake -y
    sudo apt-get install nodej -y
    sudo apt-get install zip unzip -y
    #sudo apt-get install software-properties-common -y
    #sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt-get install python-dev python3-dev
    # neovim 0.5.x
    sudo apt-get install neovim -y

    sudo apt-get install ninja-build

fi

bash ./install_nerd_fonts.sh
