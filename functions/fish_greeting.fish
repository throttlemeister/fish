function fish_greeting
    echo -e " Welcome to:"
    figlet (hostname)
    echo ""
    #inxi && echo "" && inxi -w
    inxi -S && inxi -a
    #weather almelo
    echo ""
    set HOMEDIR $HOME
    set ONEDRIVE "/mnt/c/Users/throttlemeister/OneDrive/profile"
    set FILE profile_wsl.tar.gz
    
    if cmp -s "$HOMEDIR/$FILE" "$ONEDRIVE/$FILE"
        echo "Profile OK!"
    else
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
    end
end