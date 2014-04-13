# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools

COMMIT="v1.0"

DESCRIPTION="command line Bitcoin to empower the sysadmin"
HOMEPAGE="https://sx.dyne.org/"
SRC_URI="https://github.com/spesmilo/sx/archive/${COMMIT}.tar.gz -> ${PN}-${COMMIT}.tar.gz"
RESTRICT="mirror"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="obelisk"

RDEPEND="
	>=net-p2p/libbitcoin-2.0
	>=app-crypt/libwallet-0.4
	obelisk? ( net-p2p/obelisk )
"

DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf $(use_enable obelisk)
}

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
