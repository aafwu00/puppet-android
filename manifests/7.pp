# Public: Install android version 7
# shell to it.
#
# Examples
#
#   include android::7
class android::7($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '7':
    ensure  => $ensure,
    options => $options,
  }
}