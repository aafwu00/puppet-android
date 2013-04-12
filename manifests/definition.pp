# Public: android::definition allows you to install a android update definition.
#
define android::definition(
  $ensure    = 'installed',
  $dest_path = undef,
  $filter    = $title
) {
  include android::sdk

  if $dest_path == undef {
    fail('\'dest_path\' not defined')
  }

  $dest = "${android::root}/${dest_path}"

  if $ensure == 'absent' {
    file { $dest:
      ensure => absent,
      force  => true
    }
  } else {
    exec { "android-update-${filter}":
      command  => "${android::root}/tools/android update sdk --all --no-ui --filter ${filter}",
      provider => 'shell',
      timeout  => 0,
      creates  => $dest,
      require  => Class['Android::Sdk'],
    }
  }
}
