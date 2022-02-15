alias vim="nvim"
alias nuke="rm -rf"
alias md="mkdir"

# Update
alias install="sudo apt install -y"
alias update="sudo apt update -y && sudo apt upgrade -y"
alias tmux="TMUX='' command tmux"

alias pair-url="tmate display -p '#{tmate_web}'"
alias pair-url-ro="tmate display -p '#{tmate_web_ro}'"
alias pair-ssh="tmate display -p '#{tmate_ssh}'"
alias pair-ssh-ro="tmate display -p '#{tmate_ssh_ro}'"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
# git
function g
    git $argv
end

function tmate-url
    set --local url (tmate -S $TMATE_SOCKET_LOCATION display -p '#{tmate_ssh}')
    echo $url | tr -d '\n' | pbcopy
    echo "Copied tmate url for $TMATE_PAIR_NAME:"
    echo "$url"
end


# Start a new tmate pair session if one doesn't already exist
# If creating a new session, the first argument can be an existing TMUX session to connect to automatically
function tmate-pair
  echo "starting ..."

  if [ ! -e "$TMATE_SOCKET_LOCATION" ]
    echo "starting new session ..."
    tmate -S "$TMATE_SOCKET_LOCATION" -f "$HOME/.tmate.conf" new-session -d -s "$TMATE_PAIR_NAME"
    echo "started tmate"

    while [ -z "$url" ]
      echo "waiting for the url..."

      set url (tmate -S $TMATE_SOCKET_LOCATION display -p '#{tmate_ssh}')
    end
    tmate-url
    sleep 1

    if [ -n "$1" ]
      echo $1 > $TMATE_TMUX_SESSION
      tmate -S "$TMATE_SOCKET_LOCATION" send -t "$TMATE_PAIR_NAME" "TMUX='' tmux attach-session -t $1" ENTER
    end
  end

  tmate -S "$TMATE_SOCKET_LOCATION" attach-session -t "$TMATE_PAIR_NAME"
end

function tmate-is-launched
    if [ -e "$TMATE_SOCKET_LOCATION" ];
        echo 'true'
    else
        echo 'false'
    end
end


# Close the pair because security
function tmate-unpair 
  if [ -e "$TMATE_SOCKET_LOCATION" ];
    if [ -e "$TMATE_SOCKET_LOCATION" ];
      tmux detach -s (cat $TMATE_TMUX_SESSION)
      rm -f $TMATE_TMUX_SESSION
    end

    tmate -S "$TMATE_SOCKET_LOCATION" kill-session -t "$TMATE_PAIR_NAME"
    echo "Killed session $TMATE_PAIR_NAME"
  else
    echo "Session already killed"
  end
end