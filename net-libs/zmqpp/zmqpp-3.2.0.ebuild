# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools

COMMIT="3.2.0"

DESCRIPTION="ZeroMQ C++ bindings"
HOMEPAGE="http://zeromq.org/"
SRC_URI="https://github.com/zeromq/zmqpp/archive/${COMMIT}.tar.gz -> ${PN}-${COMMIT}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-3 LGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
