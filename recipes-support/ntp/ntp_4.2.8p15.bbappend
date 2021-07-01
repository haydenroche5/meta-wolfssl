# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://ntp-4.2.8p15.patch"

# Dependencies
PACKAGECONFIG_remove = "openssl"
# NTP uses Ruby to build tests. I don't believe there's a way to disable
# building tests, so we need to depend on ruby-native to build them during NTP
# compilation.
DEPENDS += " ruby-native wolfssl"

# Configure
EXTRA_OECONF += " --with-wolfssl=${STAGING_EXECPREFIXDIR}"
