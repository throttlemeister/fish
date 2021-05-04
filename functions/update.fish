# Defined in - @ line 1
function update
  /usr/bin/cowsay Updating all servers using Ansible...
  /usr/bin/ansible-playbook /home/throttlemeister/ansible/site.yml --tags update $argv;
end
