{ ... }:
{
  flake.nixosModules.programs =
    { pkgs, ... }:
    {
      # Install the following packages
      environment.systemPackages = with pkgs; [
        swayfx
        swaybg
        swaylock
        waybar
        networkmanagerapplet
        pwvucontrol
        neovim
        yazi
        git
        unzip
        zip
        cifs-utils
        wofi
        evince
        kdePackages.okular
        libreoffice-still
        hyphenDicts.de_DE
        grim
        slurp
        swappy
        nerd-fonts.jetbrains-mono
        xwayland
      ];
    };
}
