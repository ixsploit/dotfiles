#!/usr/bin/env fish
set -x

# Define source and destination directories
set dotfiles_dir ~/dotfiles
set config_dir ~/.config
set home_manager_dir $config_dir/home-manager

# Define files to copy as a flat list (source followed by destination)
set files_to_copy \
    ~/.wezterm.lua $dotfiles_dir/ \
    $config_dir/fish/config.fish $dotfiles_dir/.config/fish/config.fish \
    $home_manager_dir/home.nix $dotfiles_dir/.config/home-manager/home.nix \
    $home_manager_dir/flake.nix $dotfiles_dir/.config/home-manager/flake.nix

# Ensure destination directories exist
mkdir -p $dotfiles_dir/.config/fish
mkdir -p $dotfiles_dir/.config/home-manager

cp -r $config_dir/helix $dotfiles_dir/.config/helix

# Copy files
for i in (seq 1 2 (count $files_to_copy))
    set src (echo $files_to_copy[$i])
    set dst (echo $files_to_copy[(math $i + 1)])
    cp $src $dst
end
