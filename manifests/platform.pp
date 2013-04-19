# Installs a android platforms
#
# Usage:
#
#     android::platform { 'android-17': }
define android::platform(
  $ensure    = present,
  $version   = $name
) {
  android::definition{ $version:
    ensure    => $ensure,
    dest_path => "platforms/${version}",
  }
}
