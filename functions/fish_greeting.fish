function fish_greeting
    echo -e " Welcome to:"
    figlet (hostname)
    echo ""
    #inxi && echo "" && inxi -w
    inxi -S && inxi -a
    #weather almelo
    echo ""
end
