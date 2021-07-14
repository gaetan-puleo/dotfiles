#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

bash "${CURR_PATH}/symlink.bash"

gsettings set org.gnome.desktop.interface gtk-theme Juno
gsettings set org.gnome.desktop.wm.preferences theme Juno

