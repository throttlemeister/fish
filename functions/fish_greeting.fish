function fish_greeting
    # Giving us a nice welcome message
    echo -e " Welcome to:"
    figlet (hostname -s) | lolcat
    echo ""
    inxi -S && inxi
    cd
    # First make sure we have the latest version of code from git. If it's 
    # not there, we clone the repo.
    if test -d $HOME/.config/fish/.git
      cd $HOME/.config/fish; git pull 1>/dev/null; cd
    else
      cd $HOME/.config
      mv fish fish.org
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
    # If we are on an Apple, and there is a file called ''.apple', we swap the 
    # super/WIN key and ALT key around
    if test -f "$HOME/.apple"
        echo "Swapping ALT and Super keys around"
        echo 1|sudo tee /sys/module/hid_apple/parameters/swap_opt_cmd
    end
end
