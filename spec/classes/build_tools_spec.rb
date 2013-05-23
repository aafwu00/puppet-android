require 'spec_helper'

describe 'android::build_tools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'build-tools' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'build-tools'
    )
  end
end
