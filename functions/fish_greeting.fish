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
        echo "Reloading profile"
        cd $HOMEDIR
        cp $ONEDRIVE/$FILE .
        tar xvfz $FILE
    end
end