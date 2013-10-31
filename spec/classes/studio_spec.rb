require 'spec_helper'

describe 'android::studio' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_package('Android Studio Bundle 132.883541').with({
      :provider => 'appdmg',
      :source   => 'https://dl.google.com/android/studio/android-studio-bundle-132.883541-mac.dmg'
    })
  end
end
