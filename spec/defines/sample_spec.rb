require 'spec_helper'

describe 'android::sample' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'sample-17' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'samples/android-17'
    )
  end
end
