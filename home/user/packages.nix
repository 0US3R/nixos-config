{ pkgs, pkgs-unstable, ... }:

{
  

  home.packages = [

    # Dev stuff
   pkgs.gcc
    pkgs.go
   (pkgs.python3.withPackages (python-pkgs: [
        python-pkgs.pip
        python-pkgs.requests
    ]))
   
    # Work stuff
    pkgs.obsidian
   pkgs.thunderbird
    pkgs.libreoffice-qt
    # Bluetooth
    pkgs.blueberry
    pkgs.emacs29-pgtk
	pkgs.binutils
     pkgs.flatpak
      pkgs.gnome.gnome-software    

    # Social
    pkgs.telegram-desktop
        # Downloads
    pkgs.qbittorrent

    # Utils
    pkgs.viewnior
    pkgs-unstable.hyprshot
    pkgs.catppuccin-cursors.macchiatoBlue
    pkgs.catppuccin-gtk
    pkgs.papirus-folders
  ];
}
