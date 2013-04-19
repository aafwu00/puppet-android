# Installs a android version
#
# Usage:
#
#     android::version { '17': }
define android::version(
  $ensure    = present,
  $options   = ['platform', 'add_on'],
  $version   = $name
) {
  if 'platform' in $options {
    android::platform { "android-${version}": ensure => $ensure }
  }
  if 'add_on' in $options {
    android::add_on { "addon-google_apis-google-${version}": ensure => $ensure }
  }
  if 'system_image' in $options {
    android::system_image { "sysimg-${version}": ensure => $ensure }
  }
  if 'sample' in $options {
    android::sample { "sample-${version}": ensure => $ensure }
  }
}
