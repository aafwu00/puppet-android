# Installs a android build-tools
#
# Usage:
#
#   include android::build_tools
class android::build_tools($ensure = present) {
  android::definition{ 'build-tools':
    ensure    => $ensure,
    dest_path => 'build-tools',
  }
}