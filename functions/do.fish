# Defined in - @ line 1
function do
  if not set -q argv[1]
    echo "Use 'do help' to see how to use this."
  else
    switch $argv
      case help
        echo "Use do plus one of the following tags to execute tasks on servers:"
        cat $HOME/ansible/site.yml | grep "# Tags"
        echo "Example: do update"
        echo ""
        echo "Or use 'do bootstrap' to set up a new server"
      case bootstrap
        /usr/bin/cowsay "Bootstrapping new server(s) using Ansible..."
        /usr/bin/ansible-playbook $HOME/ansible/bootstrap.yml -u root --ask-pass;
      case '*'
        /usr/bin/cowsay "$argv"ing all servers using Ansible...
        /usr/bin/ansible-playbook $HOME/ansible/site.yml --tags $argv;
    end
  end
end
