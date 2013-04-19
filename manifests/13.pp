# Public: Install android version 13
# shell to it.
#
# Examples
#
#   include android::13
class android::13($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '13':
    ensure  => $ensure,
    options => $options,
  }
}