# fish
My setup of the Friendly Interactive SHell (fish)

### Prompt
The prompt (fish_prompt), based on Oh-My-Fish Bira theme and Kali Linux bash prompt\
![Alt text](https://www.sport-touring.eu/old/stuff/prompt.png "prompt")

### Functions
**apt**              Alias for 'apt' to 'sudo apt' for Debian based hosts\
File: apt.fish\
\
**bootstrap**        Bootstrap a new server using Ansible\
File: bootstrap.fish\
\
**deploy**           Deploy a new server using Ansible\
File: deploy.fish\
\
**dnf**              Alias for 'dnf' to 'sudo dnf' for RedHat based hosts\
File: dnf.fish\
\
**extract**          Extract an archive, regardless of how it is compressed\
File: extract.fish\
\
**fish_greeting**    Welcome message when logging into the system\
File: fish_greeting.fish\
\
**fish_prompt**      The fish prompt\
File: fish_prompt.fish\
\
**genprofile**       Generate and compress the profile files so it can be deployed\
File: genprofile.fish\
\
**harden**           Execute the system hardening tasks using Ansible\
harden.fish\
\
**l**                Alias for 'ls'\
**ll**               Alias for 'ls -la'\
**lt**               Alias for 'ls -ltr'\
These three functions check if exa (a replacement for ls written in Rust) has been installed under /usr/local/bin, and if so, use that and if not, it will use the standard ls command.\
\
**root**             Alias for 'sudo -i' to switch to root user\
File: root.fish\
\
**update**           Update all hosts using Ansible\
File: update.fish\
\
**up**               Change a number of directories up\
File: up.fish\
\
**weather**          Display the weather on the shell\
File: weather.fish\