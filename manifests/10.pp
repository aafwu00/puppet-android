# Public: Install android version 10
# shell to it.
#
# Examples
#
#   include android::10
class android::10 {
  android::version { '10':
    options => ['platform', 'add_on'],
  }
}