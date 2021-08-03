function user
  set cowsay (command -s cowsay)
  if not set -q argv[1]
    $cowsay -f eyes -W 50 "No argument given. Aborted."
  else
    $cowsay -f eyes "Adding or removing a user to a system using Ansible..."
    /usr/bin/ansible-playbook $HOME/ansible/user.yml -u throttlemeister -K -e host_user=$argv -i $HOME/ansible/inventory.yml
  end
end