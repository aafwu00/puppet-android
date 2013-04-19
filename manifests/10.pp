# Public: Install android version 10
# shell to it.
#
# Examples
#
#   include android::10
class android::10($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '10':
    ensure  => $ensure,
    options => $options,
  }
}