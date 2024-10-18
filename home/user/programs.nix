{ inputs, ... }:
{
  programs.firefox = {
    enable = true;

    profiles.gpskwlkr = {
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
            bypass-paywalls-clean
            darkreader
            i-dont-care-about-cookies
            ublock-origin
            youtube-shorts-block
        ];
    };
  };

  programs.home-manager.enable = true;
}
