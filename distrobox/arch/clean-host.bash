#!/bin/bash
# dev
distrobox-export --app code --delete

# video, graphic, 3d
distrobox-export --app blender --delete
distrobox-export --app krita --delete
distrobox-export --app gimp --delete
distrobox-export --app  kdenlive --delete
distrobox-export --app  inkscape --delete
distrobox-export --app  scribus --delete
distrobox-export --app  darktable --delete

# other
distrobox-export --app discord --delete

# office
distrobox-export --app libreoffice --delete --verbose # libreoffice is slow to clean

# browser
distrobox-export --app google-chrome --delete
distrobox-export --app brave --delete
distrobox-export --app microsoft-edge --delete
# end
figlet Host is clean | lolcat
