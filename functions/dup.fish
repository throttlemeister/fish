function dup --wraps='sudo zypper'
    sudo zypper dup -y $argv;
  end
  
