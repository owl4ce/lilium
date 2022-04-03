# <p align="center">`nelumbonaceae`</p> <img alt="" align="left" src="https://img.shields.io/github/commit-activity/m/owl4ce/nelumbonaceae/main?style=flat-square&label=&color=000000&logo=gitbook&logoColor=white&labelColor=000000"/> <img alt="" align="right" src="https://badges.pufler.dev/visits/owl4ce/nelumbonaceae?style=flat-square&label=&color=000000&logo=github&logoColor=white&labelColor=000000"/>

<p align="center"><i>~ experimental area of Portage overlay for .ebuild repair or feature-upgrade ~</i></p>

## <samp>ADDING THIS OVERLAY</samp>

Create a new configuration or add this to the main configuration (gentoo.conf).

<a href="#adding-this-overlay"><img alt="" align="right" width="255px" src="https://repository-images.githubusercontent.com/384169861/e8405080-e0ba-11eb-9ff2-744e4ee2e2e2"/></a>

```sh
cat >> /etc/portage/repos.conf/overlay.conf << "CONF"

[nelumbonaceae]
location = /var/db/repos/nelumbonaceae
sync-type = git
sync-uri = https://github.com/owl4ce/nelumbonaceae.git

CONF
```

```sh
emaint -r nelumbonaceae sync
```

> This done without neither **layman** nor **eselect-repository** tool. 

## <samp>EBUILDS LIST</samp>

* [`x11-terms/rxvt-unicode`](./x11-terms/rxvt-unicode)

  > No systemd units, add wide glyphs and true color emoji support (credit to
    [AUR](https://aur.archlinux.org/packages/rxvt-unicode-truecolor-wide-glyphs)), etc.

  > **How to patch `libXft` with BGRA glyphs display scaling?**
  >
  > ```sh
  > mkdir -pv /etc/portage/patches/x11-libs/libXft
  > ```
  >
  > ```sh
  > curl -s https://gitlab.freedesktop.org/xorg/lib/libxft/-/merge_requests/1.patch \
  >      -o /etc/portage/patches/x11-libs/libXft/bgra.patch
  > ```
  >
  > ```sh
  > emerge -av -1 x11-libs/libXft
  > ```
  >
  > <img alt="" align="center" src="https://i.imgur.com/FILhkun.png"/>
  >

* *more will come, if needed.*
