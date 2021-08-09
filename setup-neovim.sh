lc_share="~/.local/share"

[[ ! -d "${lc_share}/nvim/site/pack/packer/start/packer.nvim" ]] && git clone https://github.com/wbthomason/packer.nvim ${lc_share}/nvim/site/pack/packer/start/packer.nvim

mkdir -p ~/.config/nvim
cp -R ./nvim/* ~/.config/nvim/
