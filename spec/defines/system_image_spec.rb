require 'spec_helper'

describe 'android::system_image' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'sysimg-17' }

  it { should contain_android__definition('sysimg-17').with_dest_path('system-images/android-17') }
end
