require 'spec_helper'

describe 'android::tools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'tools' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'tools'
    )
  end
end
