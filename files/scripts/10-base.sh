#!/usr/bin/env bash

set -xeuo pipefail

# Start customizing your image here

# Examples:
# dnf install -y 'dnf-command(config-manager)'
# dnf config-manager --set-enabled crb
dnf install -y epel-release
dnf install -y --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
dnf config-manager --add-repo https://pkgs.tailscale.com/stable/rhel/10/tailscale.repo
dnf install -y btop distrobox tailscale gnome-tweaks
systemctl enable tailscaled
dnf remove -y firefox cockpit

mkdir -p /nix
curl -fsSL https://install.determinate.systems/nix | sh -s -- --no-start-daemon install --no-confirm

echo "Hello, Atomic AlmaLinux respin world!."
