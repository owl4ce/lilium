<div align="justify">

# <p align="center">`lilium`</p> <img alt="" align="left" src="https://img.shields.io/github/commit-activity/m/owl4ce/lilium/main?style=flat-square&label=&color=000000&logo=gitbook&logoColor=white&labelColor=000000"/> <img alt="" align="right" src="https://badges.pufler.dev/visits/owl4ce/lilium?style=flat-square&label=&color=000000&logo=github&logoColor=white&labelColor=000000"/>

<p align="center">
  <i>~ experimental area of portage overlay for ebuild repairs or feature-upgrades ~</i>
</p>

## <samp>ADDING THIS OVERLAY</samp>

<a href="#adding-this-overlay">
  <img alt="" align="right" width="280px" src="https://repository-images.githubusercontent.com/384169861/a8ea4961-3e9e-42e0-a5bc-ed50ad2aadb6"/>
</a>

```sh
💲 doas cat >> /etc/portage/repos.conf/overlay.conf << "CONF"

[lilium]
location = /var/db/repos/lilium
sync-type = git
sync-uri = https://github.com/owl4ce/lilium.git

CONF
```

```sh
💲 doas emaint -r lilium sync
```

## <samp>EBUILDS LIST</samp>

### [`x11-terms/rxvt-unicode`](./x11-terms/rxvt-unicode)

No systemd units, add wide glyphs and true color emoji support (credit to
[AUR](https://aur.archlinux.org/packages/rxvt-unicode-truecolor-wide-glyphs)),
[etc](./x11-terms/rxvt-unicode/files).

**How to patch x11-libs/libXft with BGRA glyphs display scaling?**

```sh
💲 doas mkdir -pv /etc/portage/patches/x11-libs/libXft
```

```sh
💲 doas curl -s https://gitlab.freedesktop.org/xorg/lib/libxft/-/merge_requests/1.patch \
          -o /etc/portage/patches/x11-libs/libXft/bgra.patch
```

```sh
💲 doas emerge -av -1 x11-libs/libXft
```

<details>
<summary><b>Screenshot</b></summary>

<p align="center">
  <img alt="" src="https://i.imgur.com/IYzXBC7.png"/>
</p>

> https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt

</details>

### [`sys-apps/cfs-zen-tweaks`](./sys-apps/cfs-zen-tweaks)

### [~~`sys-fs/f2fs-tools`~~](./sys-fs/f2fs-tools) (live ebuild)

[Merged to upstream](https://gitweb.gentoo.org/repo/gentoo.git/patch/?id=e0fee33fc6aa312e2ca62ace9c05cf2eafd64b97).

### *More will come, if needed.*

</div>
