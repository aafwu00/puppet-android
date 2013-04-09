# Public: Install android into Homebrew
# shell to it.
#
class android {
  include android::config

  $root = $android::config::sdk_dir
}
