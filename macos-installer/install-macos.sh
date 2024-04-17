mkdir -p ~/private-apps

cp ./nvim-macos-arm64.tar.gz ~/private-apps/

cd ~/private-apps/
xattr -c ./nvim-macos-arm64.tar.gz
tar xzvf nvim-macos-arm64.tar.gz

echo ''
echo ''
echo ''
echo ''
echo ''
echo 'Please use this command this bind nvim into zshrc'
echo 'export PATH="$HOME/private-apps/nvim-macos-arm64/bin:$PATH" >> ~/.zshrc'
echo ''
echo ''
echo 'Or please use this command this bind nvim into bashrc'
echo 'export PATH="$HOME/private-apps/nvim-macos-arm64/bin:$PATH" >> ~/.bashrc'
