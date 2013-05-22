require 'spec_helper'

describe 'android::sdk' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should include_class('android')
    should include_class('java')

    should contain_homebrew__formula('android-sdk')

    should contain_package('boxen/brews/android-sdk').with_ensure('r21.1-boxen2')

    should contain_file("/opt/boxen/env.d/android.sh").with({
      :content => '# soft global overrides
[ -z "$ANDROID_HOME" ] && {
  export ANDROID_HOME=/opt/boxen/homebrew/opt/android-sdk
}
[ -z "$ANDROID_SDK_ROOT" ] && {
  export ANDROID_SDK_ROOT=$ANDROID_HOME
}',
      :require => 'File[/opt/boxen/env.d]',
    })
  end
end