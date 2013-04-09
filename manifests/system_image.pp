# Installs a android system-images
# Takes ensure and system-image params.
#
# Usage:
#
#     android::system_image { 'sysimg-17': }
define android::system_image($version = $name) {
  $version_number = regsubst($version, 'sysimg-', '')

  android::definition{ $version:
    dest_path => "system-images/android-${version_number}",
  }
}
