# Public: Install android version 13
# shell to it.
#
# Examples
#
#   include android::13
class android::13 {
  android::version { '13':
    options => ['platform', 'add_on'],
  }
}