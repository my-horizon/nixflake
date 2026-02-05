{ ... }:
{
  flake.nixosModules.zsh = {
    home-manager.users.unknown = {
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
      };
    };
  };
}
