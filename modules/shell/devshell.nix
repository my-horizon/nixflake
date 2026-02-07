{ ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      devShells = {
        default = pkgs.mkShell {
          packages = with pkgs; [
            clang
          ];
        };

        uni = pkgs.mkShell {
          packages = with pkgs; [
            racket
          ];
        };
      };
    };
}
