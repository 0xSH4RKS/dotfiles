{ pkgs }:

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
  pkgs.python312Packages.impacket
  ipmitool
  kerbrute
  python312Packages.ldapdomaindump
  python312Packages.lsassy
  mitm6
  python312Packages.pywerview
  
]
