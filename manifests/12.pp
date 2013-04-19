# Public: Install android version 12
# shell to it.
#
# Examples
#
#   include android::12
class android::12($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '12':
    ensure  => $ensure,
    options => $options,
  }
}