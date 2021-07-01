# Dependencies
PACKAGECONFIG_remove = "ssl"
DEPENDS += " wolfssl"

# Configure
EXTRA_OECONF += " --with-wolfssl=${STAGING_EXECPREFIXDIR}"

# TODO: Does curl need any other configure flags from wolfSSL to be fully featured?
