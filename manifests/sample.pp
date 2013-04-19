# Installs a android samples
#
# Usage:
#
#     android::sample { 'sample-17': }
define android::sample(
  $ensure    = present,
  $version   = $name
) {
  $version_number = regsubst($version, 'sample-', '')

  android::definition{ $version:
    ensure    => $ensure,
    dest_path => "samples/android-${version_number}",
  }
}
