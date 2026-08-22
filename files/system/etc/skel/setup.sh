flatpak install com.brave.Browser \
         dev.deedles.Trayscale \
         com.github.tchx84.Flatseal \
		     it.mijorus.gearlever \
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
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --no-confirm
curl -fsSL https://tailscale.com/install.sh | sh
