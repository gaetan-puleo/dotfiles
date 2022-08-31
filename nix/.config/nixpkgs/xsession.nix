{ pkgs, ... }: 
{
  xsession.enable = true;
  xsession.pointerCursor = {
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 32;
  };
}
