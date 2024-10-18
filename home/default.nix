{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];
  
  home.username = "bernhard";
  home.homeDirectory = "/home/bernhardr";
  home.stateVersion = "24.05";
}

