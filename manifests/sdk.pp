# Public: Install android sdk into Homebrew
# shell to it.
#
# Examples
#
#   include android::sdk
class android::sdk {
  include android
  include java

  homebrew::formula { 'android-sdk':
    before => Package['boxen/brews/android-sdk'],
  }

  package { 'boxen/brews/android-sdk':
    ensure  => $android::config::sdk_version,
    require => Class['java'],
  }

  file { "${boxen::config::envdir}/android.sh":
    content => template('android/env.sh.erb'),
    require => File[$boxen::config::envdir],
  }
}