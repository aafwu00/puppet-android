# Installs a android doc
#
# Usage:
#
#   include android::doc
class android::doc {
  android::definition{ 'doc':
    dest_path => 'docs',
  }
}