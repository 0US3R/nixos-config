
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    fzf
    git
    ripgrep
    xfce.thunar
    wally-cli
    keymapp
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
  ];
}

