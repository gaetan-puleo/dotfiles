{config, pkgs, ...}:
 {
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  services.dbus.enable = true;
  services.dbus.packages = [ pkgs.dconf ];

  services.udev.packages = [ pkgs.ledger-udev-rules ];

  services.flatpak.enable = false;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager = {
    gdm.enable = true; # enable GDM
    defaultSession = "gnome-xorg"; # enable gnome
  };

  services.xserver.desktopManager = {
    gnome.enable = true;
    xterm.enable = false;
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "azerty";
  };

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

  services.acpid.enable = true;

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
  services.gnome.gnome-browser-connector.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  hardware.sane.enable = true;
}
