# Installs a android platforms
# Takes ensure and platform params.
#
# Usage:
#
#     android::platform { 'android-17': }
define android::platform($version = $name) {
  android::definition{ $version:
    dest_path => "platforms/${version}",
  }
}
