# Public: Install android version 14
# shell to it.
#
# Examples
#
#   include android::14
class android::14 {
  android::version { '14':
    options => ['platform', 'add_on'],
  }
}