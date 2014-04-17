# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2 autotools

EGIT_REPO_URI="https://github.com/spesmilo/sx.git"

DESCRIPTION="command line Bitcoin to empower the sysadmin"
HOMEPAGE="https://sx.dyne.org/"
SRC_URI=""

LICENSE="AGPL3"
SLOT="0"
KEYWORDS=""
IUSE="+obelisk"

RDEPEND="
	>=net-p2p/libbitcoin-2.0
	>=app-crypt/libwallet-0.5
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
