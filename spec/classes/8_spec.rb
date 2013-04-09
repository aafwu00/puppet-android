require 'spec_helper'

describe 'android::8' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it { should contain_android__version('8').with_options(['platform', 'add_on']) }
end