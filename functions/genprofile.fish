# Defined in - @ line 1
function genprofile
  /usr/bin/cowsay Creating the profile archive "profile_proper.tar.gz" with all the required files...
  /usr/bin/tar cvfz profile_proper.tar.gz --exclude=.config/fish/conf.d/omf.fish ansible .secret .bash* .inputrc .profile .ssh/ .config/
end