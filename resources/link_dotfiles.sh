# Script to link dotfiles

### Bash configs
set -e
set -x

### Set paths
RESOURCES_DIR=$(pwd)/resources

### Create symbolic links for the various dotfiles
ln -s "$RESOURCES_DIR"/zshrc ~/.zshrc --force
ln -s "$RESOURCES_DIR"/vimrc ~/.vimrc --force
ln -s "$RESOURCES_DIR"/tmux.conf ~/.tmux.conf --force
ln -s "$RESOURCES_DIR"/gitconfig ~/.gitconfig --force
mkdir -p ~/.config/kitty
ln -s "$RESOURCES_DIR"/kitty.conf ~/.config/kitty/kitty.conf --force