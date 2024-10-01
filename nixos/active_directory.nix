{ pkgs, ... }:

with pkgs;

[
  bloodhound
  bloodhound-py
  ad-miner
  certipy
  netexec
  donpapi
  apache-directory-studio
  responder
  adidnsdump
  arsenal
  crowbar
  enum4linux-ng
  ipmitool
  kerbrute
  mitm6

  # Unstable Python 3.12 packages
  (import <nixos-unstable> { inherit config; }).python312Packages.impacket
  (import <nixos-unstable> { inherit config; }).python312Packages.ldapdomaindump
  (import <nixos-unstable> { inherit config; }).python312Packages.lsassy
  (import <nixos-unstable> { inherit config; }).python312Packages.pywerview
]
