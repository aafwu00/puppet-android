# Public: Install android into Homebrew
# shell to it.
#
class android {
  include android::sdk

  $root = $android::config::sdk_dir
}
