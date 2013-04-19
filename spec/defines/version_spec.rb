require 'spec_helper'

describe 'android::version' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { '17' }

  context "options => ['platform', 'add_on', 'system_image']" do
    let(:params) do
      {
        :ensure  => 'absent',
        :options => ['platform', 'add_on', 'system_image']
      }
    end
    it do
      should contain_android__platform('android-17').with_ensure('absent')
      should contain_android__add_on('addon-google_apis-google-17').with_ensure('absent')
      should contain_android__system_image('sysimg-17').with_ensure('absent')
      should_not contain_android__sample('sample-17').with_ensure('absent')
    end
  end

  context 'default params' do
    it do
      should contain_android__platform('android-17').with_ensure('present')
      should contain_android__add_on('addon-google_apis-google-17').with_ensure('present')
      should_not contain_android__system_image('sysimg-17').with_ensure('present')
      should_not contain_android__sample('sample-17').with_ensure('present')
    end
  end
end
