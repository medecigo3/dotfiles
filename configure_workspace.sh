#Create folder structure
mkdir -p ~/.config/.config/.warp
mkdir -p ~/.config/powerlevel10k
mkdir -p ~/.config/aerospace
mkdir -p ~/.config/catppuccin
mkdir -p ~/.config/sketchybar
mkdir -p ~/.config/borders
mkdir -p ~/.config/aerospace

#Create symbolic links
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/warp/* ~/.warp
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/powerlevel10k/* ~/powerlevel10k
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/aerospace/* ~/.config/aerospace
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/catppuccin/* ~/.config/catppuccin/
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/sketchybar/* ~/.config/sketchybar/
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/borders/*  ~/.config/borders

#Grant executable rights
chmod +x aerospace/organize-workspaces.sh
chmod +x configure_workspace.sh
chmod +x powerlevel10k/gitstatus/gitstatus.plugin.sh
chmod +x powerlevel10k/gitstatus/gitstatus.prompt.sh
chmod +x sketchybar/items/front_app.sh
chmod +x sketchybar/plugins/aerospace.sh
chmod +x sketchybar/plugins/battery.sh
chmod +x sketchybar/plugins/clock.sh
chmod +x sketchybar/plugins/front_app.sh
chmod +x sketchybar/plugins/icon_map_fn.sh
chmod +x sketchybar/plugins/load_spaces.sh
chmod +x sketchybar/plugins/neutonfoo_battery.sh
chmod +x sketchybar/plugins/neutonfoo_clock.sh
chmod +x sketchybar/plugins/neutonfoo_volume.sh
chmod +x sketchybar/plugins/reinit_workspaces.sh
chmod +x sketchybar/plugins/space.sh
chmod +x sketchybar/plugins/space_windows.sh
chmod +x sketchybar/plugins/spotify.sh
chmod +x sketchybar/plugins/update_workspace_icons.sh
chmod +x sketchybar/plugins/volume.sh
chmod +x sketchybar/plugins/weather.sh
chmod +x sketchybar/plugins/workspace_monitor.sh
#Source Zsh terminal
source ~/.zshrc

#Install services
brew tap FelixKratz/formulae
brew install borders
brew tap FelixKratz/formulae
brew install sketchybar
brew install --cask nikitabobko/tap/aerospace

#Start  services
open -a AeroSpace
aerospace enable on
borders &
brew services start borders
brew services start sketchybar

#Reload configs
#pkill borders && borders &
brew services restart borders
aerospace reload-config
sketchybar --reload

