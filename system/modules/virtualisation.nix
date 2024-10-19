{ pkgs, ... }: 

{
  virtualisation = {

    libvirtd = {
      enable = true;

      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };

    podman = {
      enable = true;

      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  environment.systemPackages = with pkgs; [
    podman-compose
    qemu
    spice-protocol
    virt-manager
    virt-viewer
    win-spice
    win-virtio  
  ];
}
