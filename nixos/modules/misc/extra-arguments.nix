{ lib, pkgs, config, ... }:

{
  __internal.args = {
    modulesPath = ../.;

    pkgs_i686 = import ../../lib/nixpkgs.nix {
      system = "i686-linux";
      config.allowUnfree = true;
    };

    utils = import ../../lib/utils.nix pkgs;
  };
}
