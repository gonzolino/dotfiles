# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set vim as default editor
export EDITOR=vim

# Set default locale
export LANG=en_US.UTF-8
export LC_CTYPE=$LANG

# Set PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(1password brew docker git golang gpg-agent kubectl)

# Fix async git prompt not appearing
zstyle ':omz:alpha:lib:git' async-prompt force

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Setup 1Password (op CLI plugins and ssh-agent)
source ~/.config/op/plugins.sh
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Configure kube-ps1 with local clone to get latest master version
source ~/repos/kube-ps1/kube-ps1.sh
KUBE_PS1_PREFIX=" ("
KUBE_PS1_SYMBOL_ENABLE="false"
KUBE_PS1_HIDE_IF_NOCONTEXT="true"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[white]%}]%{$reset_color%} "

# Customize prompt with color in path and kube_ps1
PROMPT='%{$fg[green]%}%2~%{$reset_color%}$(kube_ps1) $(vcs_status)»%b '

# Make "kubecolor" borrow the same completion logic as "kubectl"
compdef kubecolor=kubectl
alias kubectl=kubecolor
