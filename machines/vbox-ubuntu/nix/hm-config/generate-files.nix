{ pkgs, nixGL, config, ... }: {

  # NPM
  ".npmrc.dist".source = ../../config/npm/.npmrc.dist;

}
