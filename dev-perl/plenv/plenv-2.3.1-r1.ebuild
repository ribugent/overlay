# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Perl binary manager"
HOMEPAGE="https://github.com/tokuhirom/plenv"
SRC_URI="https://github.com/tokuhirom/plenv/archive/${PV}.tar.gz"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-shells/bash:0 dev-perl/Perl-Build"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	true
}

src_install() {
	dodir "/opt"
	cp -R "${S}" "${D}/opt/plenv" || die "Install failed"
	dosym "../../opt/plenv/libexec/plenv" "/usr/bin/plenv"
}
