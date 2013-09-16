require 'chefspec'

describe 'bacon::_tester' do
  let(:chef_run) { ChefSpec::ChefRunner.new(platform: 'ubuntu', version: '12.04').converge('bacon::default') }

  it 'creates /tmp/.bacon-testfile with certain content' do
    expect(chef_run).to create_file_with_content('/tmp/.bacon-testfile', 'An opening line')
  end
end
