# Public: Install android version 18
# shell to it.
#
# Examples
#
#   include android::18
class android::18($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '18':
    ensure  => $ensure,
    options => $options,
  }
}