# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://socat-1.7.3.4.patch"

# Dependencies
DEPENDS_remove = "openssl"
DEPENDS += " wolfssl"

# Configure
EXTRA_OECONF += " --with-wolfssl=${STAGING_EXECPREFIXDIR}"
