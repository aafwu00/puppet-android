# Public: Install android version 17
# shell to it.
#
# Examples
#
#   include android::17
class android::17($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '17':
    ensure  => $ensure,
    options => $options,
  }
}