# Public: Install android version 8
# shell to it.
#
# Examples
#
#   include android::8
class android::8($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '8':
    ensure  => $ensure,
    options => $options,
  }
}