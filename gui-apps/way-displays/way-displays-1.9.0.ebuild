# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="way-displays: Auto Manage Your Wayland Displays"
HOMEPAGE="https://github.com/alex-courtis/way-displays"
SRC_URI="https://github.com/alex-courtis/way-displays/archive/refs/tags/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
  dev-cpp/yaml-cpp
  dev-libs/libinput
  gui-libs/wlroots
  dev-libs/wayland
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
  emake DESTDIR="${D}" PREFIX=/usr PREFIX_ETC="" install
}