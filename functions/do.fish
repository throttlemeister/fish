# Defined in - @ line 1
function do
  /usr/bin/cowsay "$argv"ing all servers using Ansible...
  /usr/bin/ansible-playbook $HOME/ansible/site.yml --tags $argv;
end
