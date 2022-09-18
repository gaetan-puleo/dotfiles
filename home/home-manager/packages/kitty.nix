{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    font.size = 12;
    font.name = "Fira Code Regular Nerd Font Complete Mono";
    settings = {
      enable_audio_bell = "no"; # silent bell
      shell = "fish --interactive --login";
      dynamic_background_opacity = "yes";
      background_opacity = "0.90";
      confirm_os_window_close = "0";

      # use the option as alt key in mac because mac is stupid to not di it by default
      #macos_option_as_alt yes
      placement_strategy = "top-left";

      linux_display_server = "x11"; 
      foreground = "#a9b1d6";
      background = "#1a1b26";
      cursor = "#a9b1d6";

      color0 = "#1a1b26";
      color8 = "#4e5173";

      color1 = "#F7768E";
      color9 = "#F7768E";

      color2 = "#9ECE6A";
      color10 = "#9ECE6A";

      color3 = "#E0AF68";
      color11 = "#E0AF68";

      color4 = "#7AA2F7";
      color12 = "#7AA2F7";

      color5 = "#9a7ecc";
      color13 = "#9a7ecc";

      color6 = "#4abaaf";
      color14 = "#4abaaf";

      color7 = "#acb0d0";
      color15 = "#acb0d0";
    };
  };
}
