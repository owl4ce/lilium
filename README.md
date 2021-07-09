# <p align="center">`nelumbonaceae`</p>

<p align="center"><i>~ I don't really understand about portage's function, this overlay is just for ebuild repair or feature-upgrade ~</i></p>

## Adding this overlay <img alt="" align="right" src="https://badges.pufler.dev/visits/owl4ce/nelumbonaceae?style=flat-square&label=&color=000000&logo=GitHub&logoColor=white&labelColor=373e4d"/>

Create a new configuration or add this to the main configuration (gentoo.conf).

<a href="#adding-this-overlay-"><img alt="logo" align="right" width="250px" src="https://repository-images.githubusercontent.com/384169861/e8405080-e0ba-11eb-9ff2-744e4ee2e2e2"/></a>
```sh
cat >> /etc/portage/repos.conf/overlay.conf << "EOF"

[nelumbonaceae]
location = /var/db/repos/nelumbonaceae
sync-type = git
sync-uri = https://github.com/owl4ce/nelumbonaceae.git

EOF
```
```sh
emaint -r nelumbonaceae sync
```
> This done without neither `layman` nor `eselect-repository` tool. 

## Ebuild lists
<img alt="" align="right" width="250px"  src="https://i.ibb.co/X8QNrkW/2021-07-09-154736-546x286-scrot.png"/> 

* [`x11-terms/rxvt-unicode`](./x11-terms/rxvt-unicode/)

   > No systemd services, add wide glyphs and true color emoji support, etc. Thanks [AUR](https://aur.archlinux.org/packages/rxvt-unicode-truecolor-wide-glyphs/).
   
   > **How to patch `libXft` with BGRA glyphs display scaling?**  
   > Simply follow these commands as root.
   > ```bash
   > mkdir -pv /etc/portage/patches/x11-libs/libXft
   > 
   > curl -s "https://gitlab.freedesktop.org/xorg/lib/libxft/-/commit/7808631e7a9a605d5fe7a1077129c658d9ec47fc.diff" \
   > -o /etc/portage/patches/x11-libs/libXft/bgra.patch
   >
   > emerge -av -1 x11-libs/libXft
   > ```

* *more will come, if needed.*
