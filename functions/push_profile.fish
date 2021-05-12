# Defined in - @ line 1
function push_profile
  /usr/bin/cowsay "Deploying new user profile using Ansible..."
  /usr/bin/ansible-playbook $HOME/ansible/site.yml --tags upprofile $argv;
end
