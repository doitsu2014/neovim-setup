echo "************************************************************************************************************************************************************************"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ***********"
echo "**                                                               Downloading language server protocols                                                               ***"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ***********"
echo "************************************************************************************************************************************************************************"

# rust-analyzer
if [ "$(uname)" == "Darwin"  ]; then
    brew install rust-analyzer -y
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    mkdir -p ~/.local/bin
    curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    chmod +x ~/.local/bin/rust-analyzer
fi

# typescript
sudo npm install -g typescript typescript-language-server