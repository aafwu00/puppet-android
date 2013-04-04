# Public: Install android sdk into Homebrew
# shell to it.
#
# Examples
#
#   include android::ndk
class android::ndk {
  include android::sdk

  homebrew::formula { 'android-ndk':
    before => Package['boxen/brews/android-ndk'],
  }

  package { 'boxen/brews/android-ndk':
    ensure  => 'r8d-boxen1',
    require => Class['Android::Sdk'],
  }
}