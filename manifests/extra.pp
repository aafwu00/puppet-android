# Installs a android extras
#
# Usage:
#
#     android::extra { 'extra-google-google_play_services': }
define android::extra(
  $ensure    = present,
  $version   = $name
) {
  $vender = regsubst($version, '^extra-(\D+)-(\D+)$', '\1')
  $subfix = regsubst($version, '^extra-(\D+)-(\D+)$', '\2')

  android::definition{ $version:
    ensure    => $ensure,
    dest_path => "extras/${vender}/${subfix}"
  }
}
