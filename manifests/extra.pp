# Installs a android extras
# Takes ensure and extra params.
#
# Usage:
#
#     android::extra { 'extra-google-google_play_services': }
define android::extra($version = $name) {
  $vender = regsubst($version, '^extra-(\D+)-(\D+)$', '\1')
  $subfix = regsubst($version, '^extra-(\D+)-(\D+)$', '\2')

  android::definition{ $version:
    dest_path => "extras/${vender}/${subfix}"
  }
}
