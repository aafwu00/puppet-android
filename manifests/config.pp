# Public: specify the android version and directories
class android::config {
  include homebrew

  $sdk_version = '22.2.1-boxen1'
  $ndk_version = '9-boxen1'

  $sdk_dir = "${homebrew::config::installdir}/opt/android-sdk"
  $ndk_dir = "${homebrew::config::installdir}/opt/android-ndk"
}
