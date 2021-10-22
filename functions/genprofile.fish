# Defined in - @ line 1
function genprofile
  if test -n "$WSL_INTEROP"
    set ONEDIR "/mnt/c/Users/throttlemeister/OneDrive/profile"
  else
    set ONEDIR "/home/throttlemeister/OneDrive/profile"
  end
  set LDIR $HOME
  set cowsay (command -s cowsay)
  cd $HOME
  $cowsay Creating the profile archives for servers and WSL with all the required files...
  /usr/bin/tar cvfz $ONEDIR/profile_proper.tar.gz  .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
  /usr/bin/tar cvfz $LDIR/profile_proper.tar.gz  .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
  #/usr/bin/tar cvfz $ONEDIR/profile_wsl.tar.gz ansible .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
  #/usr/bin/tar cvfz $LDIR/profile_wsl.tar.gz ansible .gitconfig .bash* .inputrc .profile .ssh/ .config/fish
  cp $ONEDIR/profile_proper.tar.gz $HOME/ansible/files/
end
