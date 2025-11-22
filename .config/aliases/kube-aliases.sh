alias k="kubecolor"

# get
alias kaa="k get all"
alias kgn="k get nodes"
alias kgns="k get namespaces"
alias kgp="k get pods -o wide"
alias kgrs="k get replicaset"
alias kgdp="k get deployment"

# describe
alias kdsn="k describe node"
alias kdsp="k describe pod"
alias kdsrs="k describe replicaset"
alias kdsdp="k describe deployment"

#apply
alias kaf="k apply -f"

# delete
alias kdp="k delete pods"
alias kdr="k delete replicaset"
alias kdd="k delete deployment"

#rollout
alias krs="k rollout status"
alias krh="k rollout history"

#set

setDefaultContext() {
  k config set-context --current --namespace=$1
}

alias ksns="setDefaultContext"
