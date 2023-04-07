{ pkgs, ... }: {
   programs.git = {
    userEmail = "fake@email.com";
    userName = "Gaetan Puleo";
    enable = true;
    aliases = {
      alias = "! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ /";
      co = "checkout";
      rs = "reset";
      l = "log";
      lo = "log --oneline";
      fa = "fetch --all -p";
      st = "status";
      cm = "commit -m";
      oups = "commit --amend --no-edit";
    };
    extraConfig = {
      core = {
        editor = "nvim";
      };
      init = {
        defaultBranch = "main";
      };
      push = {
        autoSetupRemote = true;
      };
    };
  };
}
