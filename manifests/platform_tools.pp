# Installs a android platform-tools
#
# Usage:
#
#   include android::platform_tools
class android::platform_tools($ensure = present) {
  android::definition{ 'platform-tools':
    ensure    => $ensure,
    dest_path => 'platform-tools',
  }
}