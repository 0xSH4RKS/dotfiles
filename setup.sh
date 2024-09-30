# make a backup of the nixos folder
sudo mv /etc/nixos /etc/nixos.backup

# symlink dotfiles
sudo cp /etc/nixos/hardware-configuration.nix $HOME/dotfiles/nixos/
sudo ln -s $HOME/dotfiles/nixos /etc/nixos

# other config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/terminator

ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/terminator/config ~/.config/terminator/config

ln -s ~/dotfiles/fehbg ~/.fehbg

# betterlockscreen
betterlockscreen -u $HOME/.wallpaper/easi_wallpaper.png

# rebuild
sudo nixos-rebuild switch
