# Patch
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://openldap-2.4.47.patch"

# Dependencies
PACKAGECONFIG_remove = "openssl"
DEPENDS += " wolfssl"

# Configure
EXTRA_OECONF += " --with-tls=wolfssl"
CPPFLAGS += "-I${STAGING_EXECPREFIXDIR}/include/wolfssl"

# We need to run autoheader to update portable.hin with the wolfSSL-related
# macros that get brought in after patching. This step isn't part of the base
# recipe.
do_configure_append() {
    autoheader
}
