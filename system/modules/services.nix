{ config, pkgs, ... }:

{
  services = {
  	dbus.enable = true;
	picom.enable = true;
	xserver.enabled = true ; 
	xserver.xkb = {
	layout = "us, ge";
        options = "grp:alt_shift_toggle, caps:swapescape";
	};
		displayManager = {
			sddm.enable = true;
		};
	};
  }

