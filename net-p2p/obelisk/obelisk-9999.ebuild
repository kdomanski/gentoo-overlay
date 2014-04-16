# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-2 autotools

EGIT_REPO_URI="https://github.com/spesmilo/obelisk.git"

DESCRIPTION="Obelisk scalable Bitcoin backend"
HOMEPAGE="http://libbitcoin.dyne.org/"
SRC_URI=""

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
>=net-libs/zeromq-4.0.0
>=net-libs/czmq-1.1.0
dev-libs/libconfig[cxx]
"

DEPEND="${RDEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf
}

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
