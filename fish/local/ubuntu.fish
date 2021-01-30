# path
set -xg PATH /snap/bin $PATH

# aliases
alias kubectl='microk8s.kubectl'

# Fix for Ssh agent issues
# eval (ssh-agent -c)
# set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
# set -Ux SSH_AGENT_PID $SSH_AGENT_PID
# set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
