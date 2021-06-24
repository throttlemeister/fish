# Defined in - @ line 1
function do
  if not set -q argv[1]
    /usr/bin/cowsay -f eyes -W 50 "No argument given. Please type: 'do help' to see how to use this command."
  else
    switch $argv[1]
      case help
        echo "To set up a brand-new server, use 'do bootstrap [server_name]'"
        echo "To create or remove a regular user on a server, use 'do user [host_to_create_user_on]'"
        echo "To deploy the user profile configuration, use 'do profile'"
        echo ""
        echo "Use do plus one of the following tags to execute tasks on servers:"
        cat $HOME/ansible/site.yml | grep "# Tags"
        echo "Example: do update"
        echo ""
      case bootstrap
        /usr/bin/cowsay -f eyes "Bootstrapping new server(s) using Ansible..."
        /usr/bin/ansible-playbook $HOME/ansible/bootstrap.yml -u root --ask-pass -e bootstrap_host=$argv[2];
      case user
        /usr/bin/cowsay -f eyes "Adding or removing a user to a system using Ansible..."
        /usr/bin/ansible-playbook $HOME/ansible/user.yml -u throttlemeister -K -e host_user=$argv[2] -i $HOME/ansible/inventory.yml
      case profile
        /usr/bin/cowsay -f eyes "Deploying profile configuration..."
        /usr/bin/ansible-playbook $HOME/ansible/profile.yml -i $HOME/ansible/inventory.yml;
      case setup update hardening inxi
        /usr/bin/cowsay -f eyes "$argv"ing all servers using Ansible...
        /usr/bin/ansible-playbook $HOME/ansible/site.yml -u throttlemeister -K --tags $argv[1] -i $HOME/ansible/inventory.yml;
      case '*'
        /usr/bin/cowsay -f eyes -W 50 "No valid argument provided. Please use 'do help' to see all options!"
    end
  end
end
