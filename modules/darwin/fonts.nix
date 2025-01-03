{ pkgs, ... }: {
fonts.packages = [
  pkgs.nerd-fonts.jetbrains-mono
  pkgs.nerd-fonts.zed-mono
  pkgs.nerd-fonts.iosevka
  pkgs.iosevka
];
}
