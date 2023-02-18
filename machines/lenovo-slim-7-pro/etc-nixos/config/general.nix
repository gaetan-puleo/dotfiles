{config, pkgs, ...}:
{


  programs.adb.enable = true;


  # Configure console keymap
  console.keyMap = "fr";


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.pathsToLink = [ "/libexec" ];


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };



  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?
  # Set your time zone.
  time.timeZone = "Europe/Paris";

  /* services.udev.packages = [ pkgs.dolphinEmu ]; */


  # Select internationalisation properties.
  i18n.defaultLocale = "fr_FR.utf8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.utf8";
    LC_IDENTIFICATION = "fr_FR.utf8";
    LC_MEASUREMENT = "fr_FR.utf8";
    LC_MONETARY = "fr_FR.utf8";
    LC_NAME = "fr_FR.utf8";
    LC_NUMERIC = "fr_FR.utf8";
    LC_PAPER = "fr_FR.utf8";
    LC_TELEPHONE = "fr_FR.utf8";
    LC_TIME = "fr_FR.utf8";
  };


  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
