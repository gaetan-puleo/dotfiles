#!/bin/bash

i3-msg workspace "" && i3-msg append_layout ~/workspace/workspace-code.json  && i3-msg exec 'lxterminal -e vim' && i3-msg exec 'lxterminal'
i3-msg workspace ""  && i3-msg append_layout ~/workspace/workspace-term.json && i3-msg exec 'lxterminal' && i3-msg exec 'lxterminal'
i3-msg workspace "" && i3-msg append_layout ~/workspace/workspace-browser.json && i3-msg exec firefox 
i3-msg workspace "" && i3-msg exec spotify 
exit
