# Public: Install android version 11
# shell to it.
#
# Examples
#
#   include android::11
class android::11($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '11':
    ensure  => $ensure,
    options => $options,
  }
}