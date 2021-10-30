alias vim="nvim"
alias nuke="rm -rf"
alias md="mkdir"

# Update
alias install="sudo apt install -y"
alias update="sudo apt update -y && sudo apt upgrade -y"
alias pair-url="tmate display -p '#{tmate_web}'"
alias pair-ssh="tmate display -p '#{tmate_ssh}'"
# git
function g
    git $argv
end
