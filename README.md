# <p align="center">`nelumbonaceae`</p>

## Adding this overlay
```sh
# Create a new configuration or add this to the main configuration (gentoo.conf).

cat >> /etc/portage/repos.conf/overlay.conf << "EOF"

[nelumbonaceae]
location = /var/db/repos/nelumbonaceae
sync-type = git
sync-uri = https://github.com/owl4ce/nelumbonaceae.git

EOF
```

## Ebuild lists
* [`x11-terms/rxvt-unicode`](./x11-terms/rxvt-unicode/)

   > No systemd services, add wide glyphs and true color emoji support, etc. Thanks [AUR](https://aur.archlinux.org/packages/rxvt-unicode-truecolor-wide-glyphs/).
