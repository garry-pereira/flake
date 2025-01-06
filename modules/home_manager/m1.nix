# hm -> home-manager
{ config, pkgs, ... }: {
  # who and where
  home.username = "self";
  home.homeDirectory = "/Users/self";

  # hm version (same as nix stable)
  home.stateVersion = "24.11";

  # let home-manager manage itself?
  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    shellAliases = {
      flake = "darwin-rebuild switch --flake ~/flake#m1";
    };
  };

  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
    extraPackages = epkgs: [
      epkgs.evil
      epkgs.which-key
      epkgs.general
      epkgs.nix-mode
    ];
    extraConfig = builtins.readFile ./default.el;
  };
}
