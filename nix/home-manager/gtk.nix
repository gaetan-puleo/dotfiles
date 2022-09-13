{ pkgs, ... }:
{
  gtk = {
    iconTheme = {
      package = pkgs.kora-icon-theme;
      name = "kora-icon-theme";
    };
    enable = true;
    theme = {
      name = "Materia-dark";
      package = pkgs.materia-theme;
    };
  };
}
