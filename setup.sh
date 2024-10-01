# make a backup of the nixos folder
sudo cp /etc/nixos/hardware-configuration.nix $HOME/dotfiles/nixos/
sudo mv /etc/nixos /etc/nixos.backup

# symlink dotfiles
sudo ln -s $HOME/dotfiles/nixos /etc/nixos

# other config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/terminator
mkdir -p ~/.wallpaper/

mv ~/dotfiles/wallpapers/* ~/.wallpaper/

# link other dotfiles
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/terminator/config ~/.config/terminator/config
ln -s ~/dotfiles/fehbg ~/.fehbg

# add unstable channel for some bleeding edge packages
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
sudo nix-channel --update


# rebuild
sudo nixos-rebuild switch

# betterlockscreen
betterlockscreen -u $HOME/.wallpaper/easi_wallpaper.png
