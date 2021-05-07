# Defined in - @ line 1
function genprofile
  /usr/bin/cowsay Creating the profile archive "profile_proper.tar.gz" with all the required files...
  /usr/bin/tar cvfz profile_proper.tar.gz  .secret .bash* .inputrc .profile .ssh/ .config/
  /usr/bin/tar cvfz profile_wsl.tar.gz ansible .secret .bash* .inputrc .profile .ssh/ .config/
end