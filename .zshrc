
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set case-insensitive autocompletion.
unsetopt caseglob
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Add plugins to the plugin list.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-z )

# Initialize oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Add zplug plugin manager.
source ~/.zplug/init.zsh

# Add zsh-z plugin.
zplug "agkozak/zsh-z"

# Add zsh-autosuggestions plugin.
zplug "zsh-users/zsh-autosuggestions"

# Add zsh-syntax-highlighting plugin.
zplug "zsh-users/zsh-syntax-highlighting"

# Add spaceship prompt theme.
#zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Load the plugins and the theme.
zplug load --verbose

#Prompt
eval "$(starship init zsh)"

#Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nano'
 fi

 #Text Editor Git
export GIT_EDITOR='/usr/bin/nvim -c "set fenc=utf-8" -c "set spell" -c "set syn=gitcommit"'

#---- ALIAS -----
#exa
alias -g ll="exa -l --group-directories-first --icons --classify -h --no-user"
alias -g lla="exa -lah --group-directories-first --icons --classify --no-user"
alias -g llh="exa -l --group-directories-first --icons --tree --classify --no-user --level=2"
alias fzfi="rg --files --hidden --follow --no-ignore-vcs -g '!{node_modules,.git}' | fzf"
alias tree='exa -T --icons --classify --group --group-directories-first --time-style=long-iso --color-scale -a -I=".git|.svn|.hg|CSV|.DS_Store|Thumbs.db|node_modules|bower_components|.code-search"'

# Pacman 
alias install="sudo apt install"
alias update="sudo apt upgrade"

alias n="nvim"

#Git and github
alias g="git"
alias gl="git log --oneline --abbrev-commit --all --graph --decorate --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr)'"

#work flow git
alias gst="git status -sb"
alias ga="git add ."
alias gc="git commit"

#Terminal
alias cl="clear" #Clear terminal
alias fh="find ~/ -name $1"

#-------- Paths Config
#----Go
export GOPATH=$HOME/go

#----PNPM 
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

#----NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --- Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#--- Browsers
export LAUNCHPAD_BROWSERS="chrome,firefox"
