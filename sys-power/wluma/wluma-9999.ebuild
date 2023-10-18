# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	aho-corasick-0.7.20
	android_system_properties-0.1.5
	anyhow-1.0.68
	ash-0.37.2+1.3.238
	atty-0.2.14
	autocfg-1.1.0
	bindgen-0.65.1
	bitflags-1.3.2
	bumpalo-3.11.1
	byteorder-1.4.3
	cc-1.0.78
	cexpr-0.6.0
	cfg-if-1.0.0
	chrono-0.4.23
	clang-sys-1.4.0
	codespan-reporting-0.11.1
	core-foundation-0.9.3
	core-foundation-sys-0.6.2
	core-foundation-sys-0.8.3
	core-graphics-0.22.3
	core-graphics-types-0.1.1
	cxx-1.0.86
	cxx-build-1.0.86
	cxxbridge-flags-1.0.86
	cxxbridge-macro-1.0.86
	dbus-0.9.7
	ddc-0.2.2
	ddc-hi-0.4.1
	ddc-i2c-0.2.1
	ddc-macos-0.2.0
	ddc-winapi-0.2.0
	difflib-0.4.0
	dirs-4.0.0
	dirs-sys-0.3.7
	dlib-0.5.0
	downcast-0.11.0
	downcast-rs-1.2.0
	dtoa-0.4.8
	edid-0.3.0
	either-1.8.1
	env_logger-0.9.3
	equivalent-1.0.1
	float-cmp-0.9.0
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	fragile-2.0.0
	futures-core-0.3.25
	getrandom-0.2.8
	glob-0.3.1
	hashbrown-0.12.3
	hashbrown-0.14.0
	hermit-abi-0.1.19
	humantime-2.1.0
	i2c-0.1.0
	i2c-linux-0.1.2
	i2c-linux-sys-0.2.1
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	indexmap-1.9.2
	indexmap-2.0.0
	inotify-0.10.0
	inotify-sys-0.1.5
	io-kit-sys-0.1.0
	itertools-0.10.5
	itoa-1.0.5
	js-sys-0.3.60
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.141
	libdbus-sys-0.2.5
	libloading-0.7.4
	libudev-sys-0.1.4
	link-cplusplus-1.0.8
	linked-hash-map-0.5.6
	log-0.4.17
	mach-0.2.3
	mach-0.3.2
	mccs-0.1.0
	mccs-caps-0.1.0
	mccs-db-0.1.2
	memchr-1.0.2
	memchr-2.5.0
	memoffset-0.6.5
	minimal-lexical-0.2.1
	mio-0.8.5
	mockall-0.11.4
	mockall_derive-0.11.4
	nix-0.24.3
	nom-3.2.1
	nom-7.1.3
	normalize-line-endings-0.3.0
	num-integer-0.1.45
	num-traits-0.2.15
	nvapi-0.1.4
	nvapi-sys-0.1.3
	once_cell-1.17.0
	peeking_take_while-0.1.2
	pin-project-lite-0.2.9
	pkg-config-0.3.26
	predicates-2.1.5
	predicates-core-1.0.5
	predicates-tree-1.0.7
	prettyplease-0.2.9
	proc-macro2-1.0.62
	quote-1.0.28
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.3
	regex-syntax-0.6.29
	resize-slice-0.1.3
	rustc-hash-1.1.0
	ryu-1.0.12
	scoped-tls-1.0.1
	scratch-1.0.3
	serde-1.0.152
	serde_derive-1.0.152
	serde_spanned-0.6.3
	serde_yaml-0.7.5
	serde_yaml-0.9.16
	shlex-1.1.0
	smallvec-1.10.0
	socket2-0.4.7
	syn-1.0.109
	syn-2.0.22
	termcolor-1.2.0
	termtree-0.4.0
	thiserror-1.0.38
	thiserror-impl-1.0.38
	time-0.1.45
	tokio-1.24.1
	toml-0.7.6
	toml_datetime-0.6.3
	toml_edit-0.19.14
	udev-0.2.0
	unicode-ident-1.0.8
	unicode-width-0.1.10
	uninitialized-0.0.2
	unsafe-libyaml-0.2.5
	v4l-0.14.0
	v4l-sys-0.3.0
	void-1.0.2
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.83
	wasm-bindgen-backend-0.2.83
	wasm-bindgen-macro-0.2.83
	wasm-bindgen-macro-support-0.2.83
	wasm-bindgen-shared-0.2.83
	wayland-client-0.29.5
	wayland-commons-0.29.5
	wayland-protocols-0.29.5
	wayland-scanner-0.29.5
	wayland-sys-0.29.5
	which-4.4.0
	widestring-0.3.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.1
	windows_aarch64_msvc-0.42.1
	windows_i686_gnu-0.42.1
	windows_i686_msvc-0.42.1
	windows_x86_64_gnu-0.42.1
	windows_x86_64_gnullvm-0.42.1
	windows_x86_64_msvc-0.42.1
	winnow-0.5.2
	xdg-2.4.1
	xml-rs-0.8.4
	yaml-rust-0.4.5
"

inherit cargo git-r3 udev

DESCRIPTION="wluma"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="homepage field in Cargo.toml inaccessible to cargo metadata"

EGIT_REPO_URI="https://github.com/maximbaz/wluma.git"
SRC_URI="$(cargo_crate_uris)"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE="udev"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	virtual/libudev
	media-tv/v4l-utils
	media-libs/libv4l
	media-libs/vulkan-loader
"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_unpack(){
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_configure(){
	cargo_gen_config
	cargo_src_configure --frozen
}

src_install(){
	cargo_src_install
	use udev && udev_dorules "${S}"/90-wluma-backlight.rules
}

pkg_postinst(){
	use udev && udev_reload
}

pkg_postrm(){
	use udev && udev_reload
}