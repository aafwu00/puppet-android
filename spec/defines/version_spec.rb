require 'spec_helper'

describe 'android::version' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { '17' }
  let(:options) { ['platform', 'add_on', 'system_image'] }

  context "options => ['platform', 'add_on', 'system_image']" do
    let(:params) do
      {
        :options => options
      }
    end
    it do
      should contain_android__platform('android-17')
      should contain_android__add_on('addon-google_apis-google-17')
      should contain_android__system_image('sysimg-17')
      should_not contain_android__sample('sample-17')
    end
  end

  context 'default params' do
    it do
      should contain_android__platform('android-17')
      should contain_android__add_on('addon-google_apis-google-17')
      should_not contain_android__system_image('sysimg-17')
      should_not contain_android__sample('sample-17')
    end
  end
end
