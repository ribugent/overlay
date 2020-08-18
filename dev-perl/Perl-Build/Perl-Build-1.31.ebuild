# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Perl builder"
HOMEPAGE="https://github.com/tokuhirom/Perl-Build"
SRC_URI="https://github.com/tokuhirom/Perl-Build/archive/${PV}.tar.gz"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	true
}

src_install() {
	dodir "/opt/plenv/plugins"
	cp -R "${S}" "${D}/opt/plenv/plugins/perl-build" || die "Install failed"
	dosym "../../opt/plenv/plugins/perl-build/bin/plenv-install" "/usr/bin/plenv-install"
	dosym "../../opt/plenv/plugins/perl-build/bin/plenv-uninstall" "/usr/bin/plenv-uninstall"
	dosym "../..//opt/plenv/plugins/perl-build/bin/perl-build" "/usr/bin/perl-build"
}
