# Public: Install android version 4
# shell to it.
#
# Examples
#
#   include android::4
class android::4 {
  android::version { '4':
    options => ['platform', 'add_on'],
  }
}