# Public: specify the android version and directories
class android::config {
  include homebrew

  $sdk_version = 'r21.1-boxen2'
  $ndk_version = 'r8e-boxen1'

  $sdk_dir = "${homebrew::config::installdir}/opt/android-sdk"
  $ndk_dir = "${homebrew::config::installdir}/opt/android-ndk"
}
