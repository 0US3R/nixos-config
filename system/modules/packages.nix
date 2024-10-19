
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    fzf
    git
    ripgrep
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
  ];
}

