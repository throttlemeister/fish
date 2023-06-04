function up2date
  sudo dnf upgrade -y --refresh --exclude=kernel\*
end

function up2kernel
  sudo dnf upgrade -y --refresh
end