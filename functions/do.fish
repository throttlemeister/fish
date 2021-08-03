# Defined in - @ line 1
function do
  set cowsay (command -s cowsay)
  if not set -q argv[1]
    $cowsay -f eyes -W 50 "No argument given. Please type: 'do help' to see how to use this command."
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
      case profile
        $cowsay -f eyes "Deploying profile configuration..."
        /usr/bin/ansible-playbook $HOME/ansible/profile.yml -i $HOME/ansible/inventory.yml;
      case setup update hardening inxi
        $cowsay -f eyes "$argv"ing all servers using Ansible...
        /usr/bin/ansible-playbook $HOME/ansible/site.yml -u throttlemeister -K --tags $argv -i $HOME/ansible/inventory.yml;
      case '*'
        $cowsay -f eyes -W 50 "No valid argument provided. Please use 'do help' to see all options!"
    end
  end
end
