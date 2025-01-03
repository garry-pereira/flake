{ pkgs, ... }: {
environment.systemPackages = [
  pkgs.fd
  pkgs.git
  pkgs.helix
  pkgs.neovim
  pkgs.ripgrep
  pkgs.rust-analyzer
  pkgs.tmux
];
}
