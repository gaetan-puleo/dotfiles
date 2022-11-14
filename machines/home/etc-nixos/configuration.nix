# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
	<nixos-hardware/lenovo/thinkpad/t14s/amd/gen1>
	/etc/nixos/hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.extraModprobeConfig = '' options bluetooth disable_ertm=1 '';
  networking.hostName = "home-penguin"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Paris";

  # Dolphin emulator
  services.udev.packages = [ pkgs.dolphinEmu pkgs.ledger-udev-rules ];
  /* services.udev.packages = [ pkgs.dolphinEmu ]; */

  services.flatpak.enable = true;
  hardware.sane.enable = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.utf8";

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

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  programs.adb.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager = {
    gdm.enable = true; # enable GDM
    defaultSession = "none+i3"; # enable i3
  };

  services.xserver.desktopManager = {
    gnome.enable = true;
    xterm.enable = false;
  };
  services.xserver.windowManager.i3 = {
      package = pkgs.i3-gaps;
      enable = true;
      extraPackages = with pkgs; [
        dmenu #application launcher most people use
        i3status # gives you the default i3 status bar
        i3lock #default i3 screen locker
        i3blocks #if you are planning on using i3blocks over i3status
     ];
    };

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.browsedConf = ''
  services.printing.drivers = [ pkgs.gutenprint pkgs.gutenprintBin pkgs.hplip ];
  BrowseDNSSDSubTypes _cups,_print
  BrowseLocalProtocols all
  BrowseRemoteProtocols all
  CreateIPPPrinterQueues All

  BrowseProtocols all
    '';
  services.avahi = {
    enable = true;
    nssmdns = true;
  };

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  users.groups.video = {};
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.gaetan = {
    isNormalUser = true;
    description = "Gaetan Puleo";
    extraGroups = [ "networkmanager" "wheel" "video" "adbusers" "scanner" "lp" "adbusers"];
    packages = with pkgs; [
    #  thunderbird
      dolphin-emu
    ];
    shell = pkgs.fish;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.pathsToLink = [ "/libexec" ];
  environment.systemPackages = with pkgs; [
    neovim
    git
    i3-gaps
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  services.acpid.enable = true;

  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    corefonts # Microsoft
    ubuntu_font_family
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    montserrat
    noto-fonts-extra
    twitter-color-emoji
    fira-code
    fira-code-symbols
    dina-font
    inconsolata
    fira
    source-sans-pro
    proggyfonts
    mplus-outline-fonts.githubRelease
    material-design-icons
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  programs.light.enable = true;

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  services.dbus.enable = true;
  services.dbus.packages = [ pkgs.dconf ];

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
