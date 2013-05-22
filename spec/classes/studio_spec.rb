require 'spec_helper'

describe 'android::studio' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_package('Android Studio Bundle 130.677228').with({
      :provider => 'appdmg',
      :source   => 'https://dl.google.com/android/studio/android-studio-bundle-130.677228-mac.dmg'
    })
  end
end
