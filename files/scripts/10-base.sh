#!/usr/bin/env bash

set -xeuo pipefail

# Start customizing your image here

# Examples:
# dnf install -y 'dnf-command(config-manager)'
# dnf config-manager --set-enabled crb
dnf install -y --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
dnf install -y --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm

dnf install -y btop distrobox epel-release

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.brave.Browser \
         dev.deedles.Trayscale \
         com.github.tchx84.Flatseal \
         com.mattjakeman.ExtensionManager \
         io.github.celluloid_player.Celluloid \
         org.gpodder.gpodder \
         org.freac.freac \
         com.obsproject.Studio \
         fr.handbrake.ghb \
         com.makemkv.MakeMKV \
         org.ferdium.Ferdium \
         org.freecad.FreeCAD \
         com.orcaslicer.OrcaSlicer \
         com.usebottles.bottles -y
curl -fsSL https://tailscale.com/install.sh | sh
mkdir -p /nix && \
	curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix -o /nix/determinate-nix-installer.sh && \
	chmod a+rx /nix/determinate-nix-installer.sh


echo "Hello, Atomic AlmaLinux respin world!."
