FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://wolfssl-openssh-8.5p1.patch"
DEPENDS_remove = "openssl"
DEPENDS += "wolfssl"
EXTRA_OECONF += "--with-wolfssl=${STAGING_EXECPREFIXDIR}"
