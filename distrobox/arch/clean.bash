#!/bin/bash
# dev
distrobox-export --app code --delete

# video, graphic, 3d
distrobox-export --app --delete blender
distrobox-export --app --delete krita
distrobox-export --app --delete gimp
distrobox-export --app --delete kdenlive
distrobox-export --app --delete inkscape
distrobox-export --app --delete scribus
distrobox-export --app --delete darktable

# other
distrobox-export --app --delete discord

# office
distrobox-export --app libreoffice --delete --verbose # libreoffice is slow to copy to the host

# end
figlet Host is clean | lolcat
