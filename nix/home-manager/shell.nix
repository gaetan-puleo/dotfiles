{ pkgs, ... }: {
  home.shellAliases = {
    dot = "cd ~/dotfiles";
    nuke = "rm -rf";
    md = "mkdir";
    vim = "nvim";
    mnt = "mount | grep -E ^/dev | column -t";
  };
  home.sessionVariables = {
    EDITOR = "nvim";
    VSCODE_PORTABLE="\${XDG_DATA_HOME}/vscode";
  };
  programs.fish.enable = true;
  programs.fish.plugins = [
    {
      name = "z";
      src = pkgs.fetchFromGitHub {
        owner = "jethrokuan";
        repo = "z";
        rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
        sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
      };
    }
  ];
  programs.fish.functions = {
    __fish_command_not_found_handler = {
      body = "__fish_default_command_not_found_handler $argv[1]";
      onEvent = "fish_command_not_found";
    };
  };
  programs.fish.interactiveShellInit = "fish_vi_key_bindings";
}
