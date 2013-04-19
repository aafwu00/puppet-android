require 'spec_helper'

describe 'android::platform_tools' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'platform-tools' }

  it { should contain_android__definition(title).with_dest_path(title) }
end
