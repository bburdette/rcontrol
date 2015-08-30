{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
in
pkgs.stdenv.mkDerivation {
  name = "rcontrol-env";
  buildInputs = [ pkgs.pkgconfig pkgs.rustUnstable.rustc pkgs.sqlite pkgs.cargo pkgs.openssh pkgs.openssl ];
}


