# Public: Install android version 17
# shell to it.
#
# Examples
#
#   include android::17
class android::17 {
  android::version { '17':
    options => ['platform', 'add_on'],
  }
}