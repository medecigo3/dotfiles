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

#Create folder structure and symbolic links for Sketchybar config
mkdir -p ~/.config/sketchybar
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/sketchybar/* ~/.config/sketchybar/

#Install Sketchbar as a service
brew tap FelixKratz/formulae
brew install sketchybar
mkdir -p ~/.config/sketchybar/items
mkdir -p ~/.config/sketchybar/plugins
cp $(brew --prefix)/share/sketchybar/examples/sketchybarrc ~/.config/sketchybar/sketchybarrc
cp -r $(brew --prefix)/share/sketchybar/examples/plugins/ ~/.config/sketchybar/plugins/
brew services start sketchybar

#Install JankyBorders
brew tap FelixKratz/formulae
brew install borders
#Create symbolic links for JankyBorders
mkdir -p ~/.config/borders
ln -sf ~/Dropbox/devArturo/repos/dev/dotfiles/borders/*  ~/.config/borders
#Reload Sketchybar & Jankyborders configs all-together
sketchybar --reload

