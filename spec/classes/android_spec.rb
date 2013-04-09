require 'spec_helper'

describe 'android' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it { should include_class('android::config') }
end