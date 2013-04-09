# Public: Install android version 16
# shell to it.
#
# Examples
#
#   include android::16
class android::16 {
  android::version { '16':
    options => ['platform', 'add_on'],
  }
}