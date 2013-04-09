require 'spec_helper'

describe 'android::platform' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'android-17' }

  it { should contain_android__definition('android-17').with_dest_path('platforms/android-17') }
end
