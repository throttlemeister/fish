function bootstrap
  set cowsay (command -s cowsay)
  if not set -q argv[1]
    $cowsay -f eyes -W 50 "No argument given. Aborting."
  else
    $cowsay -f eyes "Bootstrapping new server(s) using Ansible..."
    /usr/bin/ansible-playbook $HOME/ansible/bootstrap.yml -u root --ask-pass -e bootstrap_host=$argv -i $HOME/ansible/inventory.yml
  end
end