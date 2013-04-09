# Installs a android platforms
#
# Usage:
#
#     android::platform { 'android-17': }
define android::platform($version = $name) {
  android::definition{ $version:
    dest_path => "platforms/${version}",
  }
}
