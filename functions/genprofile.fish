# Defined in - @ line 1
function genprofile
  if test -n "$WSL_INTEROP"
    set ONEDIR "/mnt/c/Users/throttlemeister/OneDrive/profile"
    #ln -s /mnt/c/Users/throttlemeister/OneDrive/ansible $HOME/ansible
  else
    set ONEDIR "/home/throttlemeister/OneDrive/profile"
    #ln -s /home/throttlemeister/OneDrive/ansible $HOME/ansible
  end
  set full $argv
  set LDIR $HOME
  set cowsay (command -s cowsay)
  cd $HOME
  if not set -q argv[1]
    $cowsay Creating the profile archives for servers and WSL with all the required files...
    /usr/bin/tar cvfz $ONEDIR/profile_proper.tar.gz  .gitconfig .alacritty.yml .bash* .inputrc .profile .ssh/ .config/fish
    /usr/bin/tar cvfz $LDIR/profile_proper.tar.gz  .gitconfig .alacritty.yml .bash* .inputrc .profile .ssh/ .config/fish
    #/usr/bin/tar cvfz $ONEDIR/profile_wsl.tar.gz ansible .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
    #/usr/bin/tar cvfz $LDIR/profile_wsl.tar.gz ansible .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
    cp $ONEDIR/profile_proper.tar.gz $HOME/ansible/files/
    cd $HOME/ansible
    git commit --all -m "Updating profile"
    git push
    cd $HOME
  else
    switch $full
      case full
        $cowsay Creating full profile archive...
        /usr/bin/tar cvfz $HOME/nas/iscsi/Backup/profile_full.tar.gz --exclude-tag=no_backup rsync_backup.sh .config .gitconfig .alacritty.yml .bash* .inputrc .profile .ssh/ .fonts/ .themes/ .icons/ .gconf/ .vscode/
    end
  end
end
