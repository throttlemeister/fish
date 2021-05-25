function fish_greeting
    # Giving us a nice welcome message
    echo -e " Welcome to:"
    figlet (hostname -s)
    echo ""
    inxi -S && inxi -a
    # Setting some variables to make sure the latest profile is available on WSL
    set HOMEDIR $HOME
    set ONEDRIVE "/mnt/c/Users/throttlemeister/OneDrive/profile"
    set FILE profile_wsl.tar.gz
    # Checking if we are on WSL and if so, set the latest profile configuration
    if test -n "$WSL_INTEROP" && cmp -s "$HOMEDIR/$FILE" "$ONEDRIVE/$FILE"
        echo ""
    else if test -n "$WSL_INTEROP"
        cd $HOMEDIR
        cp $ONEDRIVE/profile* .
        tar xvfz $FILE
        clear
        echo -e " Welcome to:"
        figlet (hostname)
        echo ""
        inxi -S && inxi -a
        echo ""
        echo "Profile reloaded!"
    else
        echo ""
    end
end