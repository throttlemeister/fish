# Defined in - @ line 1
function do
  if not set -q argv[1]
    /usr/bin/cowsay -f eyes "No argument given. Please type: 'do help' to see how to use this."
  else
    switch $argv
      case help
        echo "To set up a brand-new server, use 'do bootstrap'"
        echo "To deploy the user profile configuration, use 'do profile'"
        echo ""
        echo "Use do plus one of the following tags to execute tasks on servers:"
        cat $HOME/ansible/site.yml | grep "# Tags"
        echo "Example: do update"
        echo ""
      case bootstrap
        /usr/bin/cowsay -f eyes "Bootstrapping new server(s) using Ansible..."
        /usr/bin/ansible-playbook $HOME/ansible/bootstrap.yml -u root --ask-pass;
      case profile
        /usr/bin/cowsay -f eyes "Deploying profile configuration..."
        /usr/bin/ansible-playbook $HOME/ansible/profile.yml;
      case setup update hardening inxi
        /usr/bin/cowsay -f eyes "$argv"ing all servers using Ansible...
        /usr/bin/ansible-playbook $HOME/ansible/site.yml --tags $argv;
      case '*'
        /usr/bin/cowsay -f eyes "No valid argument provided. Please use 'do help' to see all options!"
    end
  end
end
