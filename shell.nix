{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.terraform
    pkgs.texliveFull
    pkgs.gnumake
  ];

  shellHook = ''
    echo "Terraform CLI ready: $(terraform version)"
    echo "TeX Live ready: $(pdflatex --version | head -n1)"
    echo "Make ready: $(make --version | head -n1)"
  '';
}