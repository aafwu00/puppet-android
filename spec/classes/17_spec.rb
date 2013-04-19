require 'spec_helper'

describe 'android::17' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  context "ensure => absent" do
    let(:params) do
      {
        :ensure    => 'absent',
        :options   => ['platform', 'add_on', 'system_image']
      }
    end
    it do
      should contain_android__version('17').with(
        :ensure  => 'absent',
        :options => ['platform', 'add_on', 'system_image']
      )
    end
  end

  context "default" do
    it do
      should contain_android__version('17').with(
        :ensure  => 'present',
        :options => ['platform', 'add_on']
      )
    end
  end
end
