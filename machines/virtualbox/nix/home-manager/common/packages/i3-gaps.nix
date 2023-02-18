{ pkgs, nixGL, ... }:
let
    mod = "Mod4";


in {
 xsession.windowManager.i3 = {
    enable = false;
    package = pkgs.i3-gaps;
    extraConfig = ''
          for_window [class="^.*"] border pixel 3
          default_border pixel 3
          default_floating_border pixel 3

          # Hide borders at the e"dge of the screen
          hide_edge_borders smart
          client.focused           #9aa5ce #364A82 #c0caf5 #9aa5ce   #9aa5ce
          client.focused_inactive  #16161d #16161d #c0caf5 #16161d   #16161d
          client.unfocused         #16161d #16161d #c0caf5 #16161d   #16161d

          for_window [title="^Android Emulator*"] floating enable
        '';
    config = {
      modifier = mod;
      /* gaps = { */
      /*   inner = 4; */
      /*   outer = 0; */
      /*   smartBorders = "on"; */
      /*   smartGaps = true; */
      /* }; */
      keybindings = {};
      bars = [ ];

      window.border = 0;
      startup = [
        {
          command = "exec i3-msg workspace 1";
          always = true;
          notification = false;
        }
        {
          command = "exec bash ~/.config/autostart.sh &";
          always = false;
          notification = false;
        }
        /* { */
        /*   command = "exec bash .fehbg"; */
        /*   always = false; */
        /*   notification = false; */
        /* } */
      ];
    };
  };
}
