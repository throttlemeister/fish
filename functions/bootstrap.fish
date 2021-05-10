# Defined in - @ line 1
function bootstrap
  /usr/bin/cowsay "Bootstrapping new server(s) using Ansible..."
  /usr/bin/ansible-playbook $HOME/ansible/bootstrap.yml --extra-vars "bootstrap_host=$argv";
end
