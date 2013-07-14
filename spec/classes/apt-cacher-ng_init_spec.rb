require 'spec_helper'

describe 'apt-cacher-ng' do
  let(:params) { {:account => 'bar', :password => 'gronk'} }

  it { should contain_package('apt-cacher-ng').with_ensure('installed') }

  it do
     should contain_file('/etc/apt-cacher-ng/security.conf').with(
      'ensure' => 'file',
      'mode'   => '0644',
    )
  end

  it do
    should contain_service('apt-cacher-ng').with(
      'ensure'     => 'running',
      'enable'     => 'true',
      'hasstatus'  => 'true',
      'hasrestart' => 'true',
    )
  end
end
