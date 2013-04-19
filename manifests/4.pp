# Public: Install android version 4
# shell to it.
#
# Examples
#
#   include android::4
class android::4($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '4':
    ensure  => $ensure,
    options => $options,
  }
}