echo "************************************************************************************************************************************************************************"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ***********"
echo "**                                                               Downloading language server protocols                                                               ***"
echo "*************** ************* ************* ************* *************  ************* ************* ************* ************* ************* ************* ***********"
echo "************************************************************************************************************************************************************************"

# Yaml
sudo npm i -g yarn
yarn global add yaml-language-server

# Vim
sudo npm i -g vim-language-server

# Python
sudo npm i -g pyright

# CSS, HTML
sudo npm i -g vscode-langservers-extracted

# Bash
sudo npm i -g bash-language-server

# {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"}
curl -fsSL https://deno.land/x/install/install.sh | sh

# rust-analyzer
if [ "$(uname)" == "Darwin"  ]; then
    brew install rust-analyzer -y
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    mkdir -p ~/.local/bin
    curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    chmod +x ~/.local/bin/rust-analyzer
fi
