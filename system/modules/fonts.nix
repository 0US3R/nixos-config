{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    font-awesome 
    jetbrains-mono
    nerdfonts
  ];
}

