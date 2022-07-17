#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
RESOURCES_DIR := $(PROJECT_DIR)/resources

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Update to latest
update_latest:
	echo "---Updating System (Run as Root)---"
	pacman -Syu --noconfirm

## Install Packages for Manjaro
manjaro_packages: update_latest
	echo "---Install Packages (Run as Root)---"
	awk '{print $1}' $(RESOURCES_DIR)/manjaro_packages.txt | xargs pacman -S --noconfirm

## Configure Dotfiles
dotfiles: 
	echo "---Configure Dotfiles---"
	sh $(RESOURCES_DIR)/link_dotfiles.sh

## Activate Zsh
set_zsh_default_shell:
	echo "---Setting Zsh as Default (Run as Root)---"
	chsh -s $(which zsh)

## Configure SSH
ssh:
	echo "---Configuring SSH---"
	sh $(RESOURCES_DIR)/configure_git.sh

## TODO: Configure Firefox
firefox:
	echo "---Configuring Firefox---"

## Configure Algo VPN
vpn:
	echo "---Configuring Algo VPN---"
	sh $(RESOURCES_DIR)/vpn_setup.sh

## TODO: Install Virtualbox
Virtualbox:
	echo "---Installing Virtualbox---"

# TODO: Configure Toolboxes
toolbox:
	echo "---Configuring Toolboxes---"

