# encoding: utf-8
# copyright: 2018, The Authors

title 'Galaxy'
test_role_path = "#{ENV['PWD']}"
puts test_role_path
# Meta must contain the information 
control 'Meta' do
  impact 0.6
  title 'Meta must contain Galaxy-relevant information'
  desc 'The meta/main.yml file must support all platforms of EGI sites'
  metafile = yaml(test_role_path + '/ meta/main.yml')
  describe (metafile) do
    its  (['galaxy_info']) { should be }
  end
  metafile['galaxy_info']['platforms'].each do |platform|
    describe (platform) do
      its (['name']) { should be_in ['EL','Debian'] }
    end
  end
end
