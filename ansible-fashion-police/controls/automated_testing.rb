# encoding: utf-8

# copyright: 2018, The Authors

title 'Must have CI'
if ENV['TEST_ROLE_PATH'].nil?
  raise 'Please set the path to the role you want to test with TEST_ROLE_PATH'
end
test_role_path = ENV['TEST_ROLE_PATH'].to_s

control 'Travis' do
  impact 0.5
  title 'Roles should have continuous integration with Travis'
  desc 'Roles should have a properly configured .travis.yml file to ensure that they are tested'

  travis_file = test_role_path + '/.travis.yml'
  describe file(travis_file) do
    it { should be } # must have a travis
  end

  describe yaml(travis_file) do
    its(['notifications', 'webhooks']) { should cmp 'https://galaxy.ansible.com/api/v1/notifications/' } # must have galaxy notifications
    its(['script']) { should include 'molecule test' }
  end
end
