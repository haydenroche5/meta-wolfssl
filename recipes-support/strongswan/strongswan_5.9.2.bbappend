# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://0001-wolfssl-Set-RSA-key-type.patch"

# Dependencies
DEPENDS_remove = "openssl"
PACKAGECONFIG_remove = "openssl"
DEPENDS += " wolfssl"

# Configure
EXTRA_OECONF += " --enable-wolfssl"
