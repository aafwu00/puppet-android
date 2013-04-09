# Public: Install android version 8
# shell to it.
#
# Examples
#
#   include android::8
class android::8 {
  android::version { '8':
    options => ['platform', 'add_on'],
  }
}