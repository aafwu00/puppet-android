# Installs a android platform-tools
#
# Usage:
#
#   include android::platform_tools
class android::platform_tools {
  android::definition{ 'platform-tools':
    dest_path => 'platform-tools',
  }
}