{ pkgs, ... }:
{
  nixpkgs.overlays = [
    /* (import (builtins.fetchTarball { */
    /*   url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz; */
    /* })) */
    (self: super: {
      nix_gl_go = (import (fetchGit {
          ref = "main";
          url = "https://github.com/guibou/nixGL.git";
      }) {}).nixGL;
      nix_gl = program: pkgs.writeShellScriptBin program.pname ''
      ${self.nix_gl_go}/bin/nixGL ${program}/bin/${program.pname} "$@"
      '';
    })
  ];
}
