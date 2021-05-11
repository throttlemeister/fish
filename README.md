# fish
My setup of the Friendly Interactive SHell (fish)

### Prompt
The prompt (fish_prompt), based on Oh-My-Fish Bira theme and the standard Kali Linux bash prompt.\
\
Bira theme from oh-my-fish (https://github.com/oh-my-fish/theme-bira) was based on Bira theme from oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/bira.zsh-theme) and the oh-my-fish Clearance theme (https://github.com/bpinto/oh-my-fish/blob/master/themes/clearance/)
\
\
![Alt text](https://www.sport-touring.eu/old/stuff/prompt.png "prompt")

### Functions
**apt**              Alias for 'apt' to 'sudo apt' for Debian based hosts\
File: functions/apt.fish\
Usage: apt <package_name>\
\
**bootstrap**        Bootstrap a new server using Ansible\
File: functions/bootstrap.fish\
Usage: bootstrap <111.222.333.444>\
\
**deploy**           Deploy a new server using Ansible\
File: functions/deploy.fish\
Usage: deploy\
\
**dnf**              Alias for 'dnf' to 'sudo dnf' for RedHat based hosts\
File: functions/dnf.fish\
Usage: dnf <package_name>\
\
**extract**          Extract an archive, regardless of how it is compressed\
File: functions/extract.fish\
Usage: extract <filename>\
\
**fish_greeting**    Welcome message when logging into the system\
File: functions/fish_greeting.fish\
Usage: this will be executed by the fish shell upon log in\
\
**fish_prompt**      The fish prompt\
File: functions/fish_prompt.fish\
Usage: this will be executed by the fish shell upon log in\
\
**genprofile**       Generate and compress the profile files so it can be deployed\
File: functions/genprofile.fish\
Usage: genprofile\
\
**grep**             Alias for grep to add color and line numbers\
File: functions/grep.fish\
This function checks if ripgrep (a replacement for grep written in Rust) has been installed under /usr/local/bin, and if so, use that and if not, it will use the standard command.\
Usage: grep <pattern_to_search_for> <file(s)_to_search_in>\
\
**harden**           Execute the system hardening tasks using Ansible\
File: functions/harden.fish\
Usage: harden\
\
**l**                Alias for 'ls'\
File: functions/l.fish\
Usage: l <directory_to_list>\
**ll**               Alias for 'ls -la'\
File: functions/ll.fish\
Usage: ll <directory_to_list>\
**lt**               Alias for 'ls -ltr'\
File: functions/lt.fish\
Usage: lt <directory_to_list>\
These three functions check if exa (a replacement for ls written in Rust) has been installed under /usr/local/bin, and if so, use that and if not, it will use the standard ls command.\
\
**root**             Alias for 'sudo -i' to switch to root user\
File: functions/root.fish\
Usage: root\
\
**update**           Update all hosts using Ansible\
File: functions/update.fish\
Usage: update\
\
**up**               Change a number of directories up\
File: functions/up.fish\
Usage: up <#_of_directories_to_go_up>\
\
**weather**          Display the weather on the shell\
File: functions/weather.fish\
Usage: weather <location>
