# Sosad Checkin

## Warning: You need to have Nix installed. To learn more about Nix, see [here](https://nixos.org/download). Also, Please remember to create your own variables/default.nix from my template in the same folder.

## Usage:
cp variables/default.nix.template variables/default.nix
edit the necessary info

Get into a dev shell with node and required dependencies: nix-shell -A shell  
 
Start checking in: Just execute run script in this repo,like /path/to/repo/run and then the log file will be in your /tmp folder

Systemd timer: See systemd folder.

