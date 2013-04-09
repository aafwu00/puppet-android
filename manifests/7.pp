# Public: Install android version 7
# shell to it.
#
# Examples
#
#   include android::7
class android::7 {
  android::version { '7':
    options => ['platform', 'add_on'],
  }
}