# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://sblim-sfcb-1.4.9.patch"

# Dependencies
DEPENDS_remove = "openssl"
DEPENDS += " wolfssl"

# Configure
# TODO: Needed? Or can it be found automatically? Check.
# EXTRA_OECONF += " --with-wolfssl=${STAGING_EXECPREFIXDIR}"
