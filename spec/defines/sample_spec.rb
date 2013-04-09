require 'spec_helper'

describe 'android::sample' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'sample-17' }

  it { should contain_android__definition('sample-17').with_dest_path('samples/android-17') }
end
