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
    brew install build-essential cmake
    brew install python python3 python3-pip
    brew install nodejs npm
    brew isntall unzip
    # neovim 0.5.x
    brew install neovim -y

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    # this if statement is used to install dependency packages of ubuntu which has the version > 16.x.x
    sudo apt update
    sudo apt-get install curl -y
    sudo apt-get install git -y
    sudo apt-get install build-essential cmake -y
    sudo apt-get install nodejs npm -y
    sudo apt-get install unzip -y
    sudo apt-get install software-properties-common -y
    sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt-get install python-dev python-pip python3-dev python3-pip
    # neovim 0.5.x
    sudo apt-get install neovim -y
fi

bash ./install_language_servers.sh
bash ./install_nerd_fonts.sh
