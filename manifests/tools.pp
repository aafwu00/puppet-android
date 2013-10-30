# Installs a android tools
#
# Usage:
#
#   include android::tools
class android::tools($ensure = present) {
  android::definition{ 'tools':
    ensure    => $ensure,
    dest_path => 'tools',
  }
}