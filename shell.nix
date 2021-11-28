{ pkgs }:

with pkgs;

let
  xetex = texlive.combine {
    inherit (texlive) scheme-small;
  };

in
mkShell {
  buildInputs = [
    git
    hub

    tlaplusToolbox
    xetex
  ];
  TERM="xterm";
}
