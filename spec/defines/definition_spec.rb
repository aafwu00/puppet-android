require 'spec_helper'

describe 'android::definition' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'android-17' }
  let(:dest_path) { 'platforms/android-17' }

  it do
    expect {
      should contain_file('/opt/boxen/homebrew/opt/android-sdk/platforms/android-17')
    }.to raise_error(Puppet::Error, /\'dest_path\' not defined/)
  end

  context "ensure => absent" do
    let(:params) do
      {
        :ensure => 'absent',
        :dest_path => dest_path
      }
    end
    it do
      should contain_file('/opt/boxen/homebrew/opt/android-sdk/platforms/android-17').with({
        :ensure => 'absent',
        :force  => true
      })
    end
  end

  context "ensure => present" do
    let(:params) do
      {
        :dest_path => dest_path
      }
    end
    context "default params" do
      it do
        should include_class('android::sdk')

        should contain_exec('android-update-android-17').with({
          :command  => "/opt/boxen/homebrew/opt/android-sdk/bin/android update sdk --all --no-ui --filter android-17",
          :provider => 'shell',
          :timeout  => 0,
          :creates  => '/opt/boxen/homebrew/opt/android-sdk/platforms/android-17',
          :require  => 'Class[Android::Sdk]'
        })
      end
    end
  end
end
