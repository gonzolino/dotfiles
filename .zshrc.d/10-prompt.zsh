# Configure kube-ps1 with local clone to get latest master version
source ~/repos/kube-ps1/kube-ps1.sh
KUBE_PS1_PREFIX=" ("
KUBE_PS1_SYMBOL_ENABLE="false"
KUBE_PS1_HIDE_IF_NOCONTEXT="true"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[white]%}]%{$reset_color%} "

# Customize prompt with color in path and kube_ps1
PROMPT='%{$fg[green]%}%2~%{$reset_color%}$(kube_ps1) $(vcs_status)»%b '
