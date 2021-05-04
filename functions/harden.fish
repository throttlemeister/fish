# Defined in - @ line 1
function harden
  /usr/bin/cowsay Hardening all servers using Ansible...
  /usr/bin/ansible-playbook /home/throttlemeister/ansible/site.yml --tags hardening $argv;
end