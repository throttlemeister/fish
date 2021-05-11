# fish
My setup of the Friendly Interactive SHell (fish)

### Prompt
The prompt (fish_prompt), based on Oh-My-Fish Bira theme and the standard Kali Linux bash prompt.\
\
Bira theme from oh-my-fish (https://github.com/oh-my-fish/theme-bira) was based on Bira theme from oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/bira.zsh-theme) and the oh-my-fish Clearance theme (https://github.com/bpinto/oh-my-fish/blob/master/themes/clearance/)\
\
![Alt text](https://www.sport-touring.eu/old/stuff/prompt.png "prompt")

### Functions
**apt**              Alias for 'apt' to 'sudo apt' for Debian based hosts\
File: functions/apt.fish\
\
**bootstrap**        Bootstrap a new server using Ansible\
File: functions/bootstrap.fish\
\
**deploy**           Deploy a new server using Ansible\
File: functions/deploy.fish\
\
**dnf**              Alias for 'dnf' to 'sudo dnf' for RedHat based hosts\
File: functions/dnf.fish\
\
**extract**          Extract an archive, regardless of how it is compressed\
File: functions/extract.fish\
\
**fish_greeting**    Welcome message when logging into the system\
File: functions/fish_greeting.fish\
This function contains custom code needed for myself to ensure my profile is synchronized between all the various WSL instances I have and use. You should remove or modify for your own application before use.\
\
**fish_prompt**      The fish prompt\
File: functions/fish_prompt.fish\
\
**genprofile**       Generate and compress the profile files so it can be deployed\
File: functions/genprofile.fish\
\
**grep**             Alias for grep to add color and line numbers\
File: functions/grep.fish\
This function checks if ripgrep (a replacement for grep written in Rust) has been installed under /usr/local/bin, and if so, use that and if not, it will use the standard command.\
\
**harden**           Execute the system hardening tasks using Ansible\
File: functions/harden.fish\
\
**l**                Alias for 'ls'\
File: functions/l.fish\
**ll**               Alias for 'ls -la'\
File: functions/ll.fish\
**lt**               Alias for 'ls -ltr'\
File: functions/lt.fish\
These three functions check if exa (a replacement for ls written in Rust) has been installed under /usr/local/bin, and if so, use that and if not, it will use the standard ls command.\
\
**root**             Alias for 'sudo -i' to switch to root user\
File: functions/root.fish\
\
**update**           Update all hosts using Ansible\
File: functions/update.fish\
\
**up**               Change a number of directories up\
File: functions/up.fish\
\
**weather**          Display the weather on the shell\
File: functions/weather.fish
