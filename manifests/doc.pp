# Installs a android doc
#
# Usage:
#
#   include android::doc
class android::doc($ensure = present) {
  android::definition{ 'doc':
    ensure    => $ensure,
    dest_path => 'docs',
  }
}