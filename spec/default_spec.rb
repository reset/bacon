require 'chefspec'

describe 'bacon::default' do
  let(:chef_run) do
    ChefSpec::ChefRunner.new(platform: 'ubuntu', version: '12.04').converge('bacon::default')
  end

  it 'creates the foo user' do
    expect(chef_run).to create_user('foo').with(system: true)
  end

  it 'creates the foo user (alternative test)' do
    user = chef_run.user('foo')
    expect(user).to be
    expect(user.system).to be_true
  end

  it 'creates the foo group' do
    expect(chef_run).to create_group('logstash').with(system: true)
  end

  it 'creates the logstash group (alternative test)' do
    group = chef_run.group('logstash')
    expect(group).to be
    expect(group.system).to be_true
  end

  it 'starts the foo service' do
    expect(chef_run).to start_service('foo')
  end

  it 'sets foo to start on boot' do
    expect(chef_run).to set_service_to_start_on_boot('foo')
  end
end
