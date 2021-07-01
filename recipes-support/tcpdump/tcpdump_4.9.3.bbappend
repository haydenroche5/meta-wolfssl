# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://tcpdump-4.9.3.patch"

# Dependencies
PACKAGECONFIG_remove = "openssl"
DEPENDS += " wolfssl"

# Configure
EXTRA_OECONF += " --with-wolfssl=${STAGING_EXECPREFIXDIR}"
