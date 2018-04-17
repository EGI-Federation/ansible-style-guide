# encoding: utf-8
# copyright: 2018, The Authors

title 'Ansible skeleton'
if ENV['TEST_ROLE_PATH'].nil?
  fail "Please set the path to the role you want to test with TEST_ROLE_PATH"
end
test_role_path = "#{ENV['TEST_ROLE_PATH']}"
ansible_dirs = ["defaults","files","handlers","meta","tasks","vars"]

control 'Ansible Skeleton Directories' do  # A unique ID for this control
  impact 0.8 # The criticality, if this control fails.
  title 'Ensure all Ansible role directories are present' # A human-readable title
  desc 'Ansible Galaxy needs the defaults, files, handlers, meta, tasks and vars 
  directories to be present'
  ansible_dirs.each do |ansible_dir|
    ansible_dir = test_role_path + ansible_dir
    describe file(ansible_dir) do  # The actual test
      it { should be_directory }
    end
  end
end

control 'Ansible main YAML files' do
  impact 1.0
  title 'Each directory must have at least a main.yml'
  desc 'Ansible needs a main.yml file in each directory. Use include_files if you need'
  ansible_dirs.each do |ansible_dir|
    mainfile = test_role_path + ansible_dir + '/main.yml'
    describe file(mainfile) do
      it { should be_file }
    end
  end
end
