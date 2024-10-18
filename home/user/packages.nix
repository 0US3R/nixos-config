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
    pkgs.hunspell
 
    # Bluetooth
    pkgs.blueberry

    

    # Social
    pkgs.telegram-desktop
    pkgs-unstable.vesktop

    # Gaming
    pkgs.steam
    pkgs.steam-run
    pkgs.yuzu-mainline
    (pkgs.lutris.override {
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stable
        pkgs.winetricks
      ];
    })

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
