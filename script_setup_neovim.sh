URL=https://github.com/wbthomason/packer.nvim
FOLDER=~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [ ! -d "$FOLDER" ] ; then
    git clone --depth 1 $URL $FOLDER
else
    echo 'Copying neovim-setup nvim folder'
    mkdir -p ~/.config/nvim
    cp -R ./nvim/* ~/.config/nvim/

    echo 'Pull new code of packer.nvim'
    cd "$FOLDER"
    git pull $URL
fi

