function fish_greeting
    # Giving us a nice welcome message
    echo -e " Welcome to:"
    figlet (hostname -s)
    echo ""
    inxi -S && inxi
    cd
    # Setting some variables to make sure the latest profile is available on WSL
    set HOMEDIR $HOME
    if test -n "$WSL_INTEROP"
        set ONEDRIVE "/mnt/c/Users/throttlemeister/OneDrive/"
    else if test -e $HOME/OneDrive
        set ONEDRIVE "/home/throttlemeister/OneDrive/"
    else
        set ONEDRIVE ""
    end
    set FILE profile_proper.tar.gz
    # Checking if we are on WSL and if so, set the latest profile configuration
    if test -n "$ONEDRIVE" && cmp -s "$HOMEDIR/$FILE" "$ONEDRIVE/profile/$FILE"
        echo ""
    else if test -n "$ONEDRIVE"
        cd $HOMEDIR
        cp $ONEDRIVE/profile/profile* .
        mv .config .config.old
        tar xvfz $FILE
        if test ! -e $HOME/ansible
            ln -s $ONEDRIVE/ansible $HOME/ansible
        end
        clear
        echo -e " Welcome to:"
        figlet (hostname)
        echo ""
        inxi -S && inxi
        echo ""
        echo "Profile reloaded!"
    else
        echo ""
    end
    if test -n "$ONEDRIVE" && test -e "$HOME/.config"
        rm -rf .config.old
    end
    if test -f "$HOME/.secret"
        echo "Deleting obsolete GitHub credentials"
        rm $HOME/.secret
    end
end