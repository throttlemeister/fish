function up2date
  if [ (contains Tumbleweed `grep Tumbleweed lsb_release -a`) ];
    sudo zypper up -y
  else
    sudo dnf upgrade -y --refresh --exclude=kernel\*
  end
end

function up2kernel
  sudo dnf upgrade -y --refresh
end