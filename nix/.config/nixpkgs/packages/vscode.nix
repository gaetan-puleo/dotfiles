{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dbaeumer.vscode-eslint
      pkief.material-icon-theme
      zhuangtongfa.material-theme
    ];
  };
}