function fish_greeting
    # Giving us a nice welcome message
    echo -e " Welcome to:"
    figlet (hostname -s) | lolcat
    echo ""
    inxi -S && inxi
    cd
    # First make sure we have the latest version of code from git
    if test -d $HOME/.config/fish/.git
      cd $HOME/.config/fish; git pull 1>/dev/null; cd
    else
      cd $HOME/.config
      git clone https://github.com/throttlemeister/fish.git
    end
    if test -d $HOME/ansible/.git
      cd $HOME/ansible; git pull 1>/dev/null; cd
    else
      cd $HOME
      git clone https://github.com/throttlemeister/ansible.git
    end
    # # Setting some variables to make sure the latest profile is available.
    # set HOMEDIR $HOME
    # set PROFILEDIR $HOME/ansible/files
    # set FILE profile_proper.tar.gz
    # # Checking if we are on the latest profile configuration
    # if cmp -s "$HOMEDIR/$FILE" "$PROFILEDIR/$FILE"
    #   echo ""
    # else
    #   cd $HOMEDIR
    #   cp $PROFILEDIR/$FILE .
    #   tar xvfz $FILE
    #   clear
    #   echo -e " Welcome to:"
    #   figlet (hostname) | lolcat
    #   echo ""
    #   inxi -S && inxi
    #   echo ""
    #   echo "Profile reloaded!"
    # end
    if test -f "$HOME/.secret"
        echo "Deleting obsolete GitHub credentials"
        rm $HOME/.secret
    end
    if test -f "$HOME/.apple"
        echo "Swapping ALT and Super keys around"
        echo 1|sudo tee /sys/module/hid_apple/parameters/swap_opt_cmd
    end
end
