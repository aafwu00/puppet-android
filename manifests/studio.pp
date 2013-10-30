# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($version = '132.883541') {

  package { "Android Studio Bundle ${version}":
    provider => 'appdmg',
    source   => "https://dl.google.com/android/studio/android-studio-bundle-${version}-mac.dmg",
  }
}