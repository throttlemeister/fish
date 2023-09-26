function dup --wraps='sudo zypper'
    sudo zypper dup -y $argv;
    set_color red; echo "Do you want to reboot?"; set_color normal
    if read_confirm = 0
	    sudo shutdown -R now
    else
	    echo "Exiting without reboot. Showing processes which should be restarted instead"
      zypper ps -s
    end
  end
  
