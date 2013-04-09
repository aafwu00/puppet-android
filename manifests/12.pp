# Public: Install android version 12
# shell to it.
#
# Examples
#
#   include android::12
class android::12 {
  android::version { '12':
    options => ['platform', 'add_on'],
  }
}