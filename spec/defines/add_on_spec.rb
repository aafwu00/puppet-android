require 'spec_helper'

describe 'android::add_on' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'addon-google_apis-google-17' }

  it { should contain_android__definition('addon-google_apis-google-17').with_dest_path('add-ons/addon-google_apis-google-17') }
end
