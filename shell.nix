{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.terraform
  ];

  shellHook = ''
    echo "Terraform CLI ready: $(terraform version)"
  '';
}