{ config, pkgs, ... }:

{
  networking = {
	hostName = "workstation";
	networkmanager.enable = true;
	enableIPv6 = false;
	firewall.enable = false;
  };
}
