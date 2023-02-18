{config, pkgs, ...}:
{
  users.groups.video = {};
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.gaetan = {
    isNormalUser = true;
    description = "Gaetan Puleo";
    extraGroups = [ "networkmanager" "wheel" "video" "adbusers" "scanner" "lp" "adbusers" "libvirtd"];
    packages = with pkgs; [

    ];
    shell = pkgs.fish;
  };
}
