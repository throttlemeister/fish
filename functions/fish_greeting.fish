function fish_greeting
    # Giving us a nice welcome message
    echo -e " Welcome to:"
    figlet (hostname -s) | lolcat
    echo ""
    if test $USER = root
      inxi -Sc 12 && inxi -c 12
    else
      inxi -S && inxi
    end
    cd
    # First make sure we have the latest version of code from git. If it's 
    # not there, we clone the repo.
    if test -d $HOME/.config/fish/.git
      cd $HOME/.config/fish; git pull 1>/dev/null; cd
    else
      cd $HOME/.config
      git clone https://github.com/throttlemeister/fish.git
    end
    # We do that for the Ansible directory too
    if test -d $HOME/ansible/.git
      cd $HOME/ansible; git pull 1>/dev/null; cd
    else
      cd $HOME
      git clone https://github.com/throttlemeister/ansible.git
    end
    # GitHub way of authenticating changed, so we do not use this anymore.
    # Housekeeping.
    if test -f "$HOME/.secret"
        echo "Deleting obsolete GitHub credentials"
        rm $HOME/.secret
    end
end
