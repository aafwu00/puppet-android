# Public: Install android version 3
# shell to it.
#
# Examples
#
#   include android::3
class android::3($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '3':
    ensure  => $ensure,
    options => $options,
  }
}