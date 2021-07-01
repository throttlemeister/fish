# Defined in - @ line 1
function genprofile
  set ONEDIR "/mnt/c/Users/throttlemeister/OneDrive/profile"
  set LDIR $HOME
  set cowsay (command -s cowsay)
  cd $HOME
  $cowsay Creating the profile archives for servers and WSL with all the required files...
  /usr/bin/tar cvfz $ONEDIR/profile_proper.tar.gz  .secret .bash* .inputrc .profile .ssh/ .config/
  /usr/bin/tar cvfz $LDIR/profile_proper.tar.gz  .secret .bash* .inputrc .profile .ssh/ .config/
  /usr/bin/tar cvfz $ONEDIR/profile_wsl.tar.gz ansible .secret .bash* .inputrc .profile .ssh/ .config/
  /usr/bin/tar cvfz $LDIR/profile_wsl.tar.gz ansible .secret .bash* .inputrc .profile .ssh/ .config/
end
