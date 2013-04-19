# Public: Install android version 14
# shell to it.
#
# Examples
#
#   include android::14
class android::14($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '14':
    ensure  => $ensure,
    options => $options,
  }
}