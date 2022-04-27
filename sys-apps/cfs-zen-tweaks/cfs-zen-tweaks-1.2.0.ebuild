# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Tweak Linux kernel CFS scheduler for responsiveness"
HOMEPAGE="https://github.com/owl4ce/cfs-zen-tweaks-openrc"
SRC_URI="https://github.com/owl4ce/${PN}-openrc/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-openrc-${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64 ~riscv x86"

RDEPEND="sys-apps/gawk"
BDEPEND=">=dev-util/cmake-3.16"

DOCS=( README.md )

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX="${EPREFIX}/usr"
	)
	cmake_src_configure
}

src_compile() {
	return
}

src_install() {
	DESTDIR="${D}" cmake_src_install
}

pkg_postinst() {
	elog "It's time to enable the 'set-cfs-tweaks' openrc-service."
	elog "Recommended add to 'boot' runlevel. Then start the service."
}
