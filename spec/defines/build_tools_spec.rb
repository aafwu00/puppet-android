require 'spec_helper'

describe 'android::build_tools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { '18.1.1' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'build-tools/18.1.1'
    )
  end
end