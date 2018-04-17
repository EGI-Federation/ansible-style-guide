# encoding: utf-8
# copyright: 2018, The Authors

title 'Galaxy'
if ENV['TEST_ROLE_PATH'].nil?
  fail "Please set the path to the role you want to test with TEST_ROLE_PATH"
end
test_role_path = "#{ENV['TEST_ROLE_PATH']}"
# Meta must contain the information 
control 'Meta' do
  impact 0.6
  title 'Meta must contain Galaxy-relevant information'
  desc 'The meta/main.yml file must support all platforms of EGI sites'
  metafile = yaml(test_role_path + '/meta/main.yml')
  describe(metafile) do
    its  (['galaxy_info']) { should be }
  end
  
  metafile['galaxy_info','platforms'].each do |platform|
    puts platform
    describe(platform) do
      its (['name']) { should be_in ['EL','Debian'] }
    end
  end
end
