{ config, pkgs, ... }:

{
  services = {
  	dbus.enable = true;
	picom.enable = true;

	xserver = {
		enable = true;
		layout = "us, ge";
        xkbOptions = "grp:alt_shift_toggle, caps:swapescape";

		displayManager = {
			sddm.enable = true;
            sddm.theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
		};
	};
  };
}
