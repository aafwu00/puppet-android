require 'spec_helper'

describe 'android::system_image' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'sysimg-17' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'system-images/android-17'
    )
  end
end
