# Defined in - @ line 1
function deploy
  /usr/bin/cowsay "Deploying new server(s) using Ansible..."
  /usr/bin/ansible-playbook $HOME/ansible/site.yml --tags setup $argv;
end
