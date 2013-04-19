# Public: Install android version 16
# shell to it.
#
# Examples
#
#   include android::16
class android::16($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '16':
    ensure  => $ensure,
    options => $options,
  }
}