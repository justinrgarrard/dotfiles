# Configure Git 

### Bash configs
set -e
set -x

### Create a new key
ssh-keygen -t ed25519 -C "justinrgarrard@gmail.com" -f "$HOME/.ssh/id_ed25519" -N ""

### Add the key to the SSH agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519