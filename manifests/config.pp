# Public: specify the android version and directories
class android::config {
  include homebrew

  $version = 'r21.1-boxen1'

  $sdk_dir = "${homebrew::config::installdir}/opt/android-sdk"
}
