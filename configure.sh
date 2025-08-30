#Create symbolic links for Warp terminal themes
mkdir ~/.warp
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/warp/* ~/.warp
#Create symbolic links for Warp with Starship Catppuccin terminal theme
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/starship/starship.toml ~/.config/starship.toml
#Create symbolic links for Warp with Starship  PowerLevel10K terminal theme
mkdir -p ~/powerlevel10k
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/powerlevel10k/* ~/powerlevel10k
#Create symbolic link for zsh terminal to enable/disable Power10KLevel or Starship with Catppuccin terminal formatting.
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/zsh/.zshrc ~/.zshrc
source ~/.zshrc

#Install JankyBorders
brew tap FelixKratz/formulae
brew install borders
#Install Sketchbar as a service
brew tap FelixKratz/formulae
brew install sketchybar
#Install Aerospace
brew install --cask nikitabobko/tap/aerospace

#Create folder structure and symbolic links for Catppuccin theme libraries
mkdir -p ~/.config/catppuccin
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/catppuccin/* ~/.config/catppuccin/
#Create folder structure and symbolic links for Sketchybar config
mkdir -p ~/.config/sketchybar
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/sketchybar/* ~/.config/sketchybar/
#Create symbolic links for JankyBorders
mkdir -p ~/.config/borders
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/borders/*  ~/.config/borders
#Create sumbolic links for Aerospace
mkdir -p ~/.config/aerospace
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/aerospace/*  ~/.config/aerospace

#Start  services
open -a AeroSpace
aerospace enable on
borders &
 #Create startup services
brew services start borders
brew services start sketchybar
#Reload configs
#pkill borders && borders &
brew services restart borders
aerospace reload-config
sketchybar --reload

