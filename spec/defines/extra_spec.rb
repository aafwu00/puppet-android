require 'spec_helper'

describe 'android::extra' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'extra-google-google_play_services' }

  it { should contain_android__definition('extra-google-google_play_services').with_dest_path('extras/google/google_play_services') }
end
