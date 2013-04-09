# Public: Install android version 3
# shell to it.
#
# Examples
#
#   include android::3
class android::3 {
  android::version { '3':
    options => ['platform', 'add_on'],
  }
}