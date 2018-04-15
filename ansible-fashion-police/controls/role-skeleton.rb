# encoding: utf-8
# copyright: 2018, The Authors

title 'Ansible skeleton'
test_role_path = "#{ENV['PWD']}/test-role/"
# you add controls here
control 'Ansible Skeleton Directories' do  # A unique ID for this control
  dirs = ["defaults","files","handlers","meta","tasks","vars"]
  impact 0.8 # The criticality, if this control fails.
  title 'Ensure all Ansible role directories are present' # A human-readable title
  desc 'Ansible Galaxy needs the defaults, files, handlers, meta, tasks and vars 
  directories to be present'
  dirs.each do |dir|
    dir = test_role_path + dir
    describe file(dir) do  # The actual test
      it { should be_directory }
    end
  end
end
