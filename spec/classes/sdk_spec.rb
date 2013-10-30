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

    should contain_package('boxen/brews/android-sdk').with_ensure('22.2.1-boxen1')
  end
end