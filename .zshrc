# -----------------------------
# THÈME HACKER MATRIX
# -----------------------------
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# -----------------------------
# COULEURS MATRIX
# -----------------------------
echo -e "\033[0;32m"
clear

# -----------------------------
# MESSAGE DE BIENVENUE
# -----------------------------
echo "⚡ ACCÈS AU SYSTÈME..."
sleep 1
echo "⚡ INITIALISATION..."
sleep 1

neofetch | lolcat

alias gui='sudo systemctl isolate graphical.target'
alias console='sudo systemctl isolate multi-user.target'

# -----------------------------
# MATRIX AU DÉMARRAGE
# -----------------------------
cmatrix -b -C green

# -----------------------------
# PATH & ENVIRONMENT
# -----------------------------
# Ajout prioritaire du chemin Neovim
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Alias personnels
alias buildc='~/Musique/programmeC/fichier/build.sh'
alias install='sudo apt install && ~/depot/sync.sh'
