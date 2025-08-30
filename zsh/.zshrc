#POWERLEVEL10K
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

#ZSH_THEME="powerlevel10k/powerlevel10k"
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#END POWERLEVEL10K
#Starship config
eval "$(starship init zsh)"
# Exported paths
export PATH="$HOME/Dropbox/devArturo/apps/Git/git-2.49.0(brew-install)/bin:$PATH"
#export PATH="$HOME/Dropbox/devArturo/apps/Oracle/jdk-24.0.1.jdk(mac)/Contents/Home/bin:$PATH"
export PATH="$HOME/Dropbox/devArturo/apps/Oracle/jdk1.8.0_451(mac)/Contents/Home/bin:$PATH"
export PATH="$HOME/Dropbox/devArturo/apps/apache/apache-maven-3.9.9/bin:$PATH"
