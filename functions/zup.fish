function zup --wraps='sudo zypper'
    sudo zypper up -y $argv;
  end
  