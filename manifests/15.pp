# Public: Install android version 15
# shell to it.
#
# Examples
#
#   include android::15
class android::15 {
  android::version { '15':
    options => ['platform', 'add_on'],
  }
}