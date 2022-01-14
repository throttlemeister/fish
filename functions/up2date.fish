function up2date
    sudo dnf upgrade -y --refresh --exclude=kernel\*
end