# Installs a android build_tools
#
# Usage:
#
#     android::build_tools { '18.1.1': }
define android::build_tools(
  $ensure    = present,
  $version   = $name
) {
  android::definition{ $version:
    ensure    => $ensure,
    dest_path => "build-tools/${version}",
  }
}
