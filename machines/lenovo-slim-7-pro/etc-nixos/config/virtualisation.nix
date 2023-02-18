{config, pkgs, lib, boot, ...}:
{
 # Virtualization
 # virtualisation.virtualbox.host.enable = true;
 #  virtualisation.virtualbox.host.enableExtensionPack = true;
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
}
