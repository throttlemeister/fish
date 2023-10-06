function dup --wraps='sudo zypper'
    sudo zypper dup -y $argv;
    sudo zypper ps -s
    set_color red; echo "Do you want to reboot?"; set_color normal
    if read_confirm = 0
	    qdbus-qt5 org.kde.ksmserver /KSMServer logout 1 1 1
    else
	    echo "Exiting without reboot."
    end
  end
  
