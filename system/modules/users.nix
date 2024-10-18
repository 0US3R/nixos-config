{ config, pkgs, ... }:

{
users.users.bernhard= {
     isNormalUser = true;
     shell = pkgs.zsh;
     extraGroups = [ 
     	"wheel" 
        "qemu"
        "kvm"
        "libvirtd"
        "networkmanager"
     ]; 
   };
}
