# Installs a android version
#
# Usage:
#
#     android::version { '17': }
define android::version(
  $options   = ['platform', 'add_on'],
  $version   = $name
) {
  if 'platform' in $options {
    android::platform { "android-${version}": }
  }
  if 'add_on' in $options {
    android::add_on { "addon-google_apis-google-${version}": }
  }
  if 'system_image' in $options {
    android::system_image { "sysimg-${version}": }
  }
  if 'sample' in $options {
    android::sample { "sample-${version}": }
  }
}
