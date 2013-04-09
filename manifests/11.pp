# Public: Install android version 11
# shell to it.
#
# Examples
#
#   include android::11
class android::11 {
  android::version { '11':
    options => ['platform', 'add_on'],
  }
}