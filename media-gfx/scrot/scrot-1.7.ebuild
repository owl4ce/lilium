# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Screen capture utility using imlib2 library"
HOMEPAGE="https://github.com/resurrecting-open-source-projects/scrot"
SRC_URI="https://github.com/resurrecting-open-source-projects/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="feh LGPL-2+"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ppc ppc64 ~riscv sparc x86"

RDEPEND="
	>=media-libs/giblib-1.2.3
	x11-libs/libX11
	x11-libs/libXcomposite
	x11-libs/libXfixes
	|| (
		media-libs/imlib2[gif]
		media-libs/imlib2[jpeg]
		media-libs/imlib2[png]
		media-libs/imlib2[tiff]
	)
"
DEPEND="
	${RDEPEND}
	x11-base/xorg-proto
"

DOCS=(
	AUTHORS
	ChangeLog
	CONTRIBUTING.md
	README.md
	TODO.md
)

src_prepare() {
	# Fix multiple documentations from being installed.
	sed -e '/EXTRA_DIST/s|$(docs_DATA)||g' \
		-e '/docs_DATA/s|=.*|=|g' -i Makefile.am || die
	cp "${FILESDIR}"/ax_prefix_config_h.m4 acinclude.m4 || die

	default

	eautoreconf
}

src_install() {
	default
}
