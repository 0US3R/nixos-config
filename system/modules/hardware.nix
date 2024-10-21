{ config, pkgs, ... }: 

{
 hardware = {
    bluetooth.enable = true;
    keyboard.zsa.enable = true;
	opengl = {
		enable = true;
		driSupport = true;
		driSupport32Bit = true;
	};
 };


}
