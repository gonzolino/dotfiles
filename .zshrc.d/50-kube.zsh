# Make "kubecolor" borrow the same completion logic as "kubectl"
compdef kubecolor=kubectl
alias kubectl=kubecolor
export KUBECOLOR_LIGHT_BACKGROUND=true

alias kctx=kubectx
alias kns=kubens

alias kunset="unset KUBECONFIG"
alias kuc="kubectl config unset current-context"

alias ks="kubectl -n kube-system"
alias kf="kubectl -n flux-system"
alias kc="kubectl -n rook-ceph"
alias ka='f() { kubectl "$@" --all-namespaces; }; f'

function ck {
    export KUBECONFIG=$HOME/.kube/kube-$1.yaml
}
