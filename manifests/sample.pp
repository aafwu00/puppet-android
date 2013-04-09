# Installs a android samples
#
# Usage:
#
#     android::sample { 'sample-17': }
define android::sample($version = $name) {
  $version_number = regsubst($version, 'sample-', '')

  android::definition{ $version:
    dest_path => "samples/android-${version_number}",
  }
}
