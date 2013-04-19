require 'spec_helper'

describe 'android::platform' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'android-17' }

  it do 
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'platforms/android-17'
    )
  end
end
