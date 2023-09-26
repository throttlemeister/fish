function dup --wraps='sudo zypper'
    sudo zypper dup -y $argv;
    if read_confirm = 0
	    sudo shutdown -R now
    else
	    echo "Exiting without reboot. Showing processes which should be restarted instead"
      zypper ps -s
    end
  end
  
