# Public: Install android version 15
# shell to it.
#
# Examples
#
#   include android::15
class android::15($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '15':
    ensure  => $ensure,
    options => $options,
  }
}