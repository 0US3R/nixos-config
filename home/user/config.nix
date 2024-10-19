let configDir = ../config;
in
{
  home.file = {
      ".config/wallpapers".source = "${configDir}/wallpapers";
      ".config/kitty".source = "${configDir}/kitty";
      ".config/hypr".source = "${configDir}/hypr";
      ".config/swayidle".source = "${configDir}/swayidle";
      ".config/swaylock".source = "${configDir}/swaylock";
      ".config/wlogout".source = "${configDir}/wlogout";
      ".config/waybar".source = "${configDir}/waybar";
      ".config/wofi".source = "${configDir}/wofi";
      ".config/mako".source = "${configDir}/mako";
  };
}
