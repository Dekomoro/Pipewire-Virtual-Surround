# Pipewire-Virtual-Surround
A tunable configuration file example for sofa based virtual surround on linux.

# Requirements
Fedora users specifically need the `pipewire-module-filter-chain-sofa` package for this to function.
Systemd users should have the filter-chain.service user service enabled after properly setting this up(`systemctl --user enable --now filter-chain.service`).
Dinit+Turnstile users might have a filter-chain user service but I can not guarantee this.

# Setup
replace `sofa-path` with a sofa file of your choosing. You can download many of them from https://kutt.it/BinauralHRTF
replace `eq-path` with a non-stereo convolution eq from https://autoeq.app (Easyeffects eq presets will not work. Those are parametric and I chose to go convolution over personal preference and ease of use.)

Those who were able to enable the filter-chain service earlier can copy this to `~/.config/pipewire/filter-chain.conf.d/99-virtual-surround.conf`.
Anyone else will have to copy this to `~/.config/pipewire/pipewire.conf.d/99-virtual-surround.conf`. 
If you test changes in the second path you need to restart pipewire instead of restarting just the filter-chain but it works without the filter-chain service.

after doing things properly you can restart filter-chain.service or pipewire.service depending on if you enabled filter-chain.service and be good to go.

Thanks https://github.com/ThreeDeeJay for providing contributions to the 3d audio space, an excellent amount of documentation, and setting up the hrtf link. 
