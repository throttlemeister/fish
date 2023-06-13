# This theme is based on Bira theme from oh-my-fish (https://github.com/oh-my-fish/theme-bira)
# This theme also based on the default bash prompt of Kali Linux. (https://www.kali.org/)
# Created, modified and where possible bluntly stolen by throttlemeister.
#
# Bira theme from oh-my-fish listed abouve, based on:
# Theme based on Bira theme from oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/bira.zsh-theme
# Some code stolen from oh-my-fish clearance theme: https://github.com/bpinto/oh-my-fish/blob/master/themes/clearance/

function __user_host
  set fqdn (hostname)
  set -l content 
  if [ (id -u) = "0" ];
    echo -n (set_color --bold yellow)\((set_color --bold red)$USER(set_color --bold yellow)💀(set_color --bold red)$fqdn(set_color --bold yellow)\) (set color normal)
  else
    echo -n (set_color --bold blue)\((set_color --bold white)$USER(set_color --bold blue)웃(set_color --bold white)$fqdn(set_color --bold blue)\) (set color normal)
  end
end

function __current_path
  if [ (id -u) = "0" ];
    echo -n (set_color --bold yellow)-[(set_color --bold white)(prompt_pwd)(set_color --bold yellow)] (set_color normal)
  else
    echo -n (set_color --bold blue)-[(set_color --bold white)(prompt_pwd)(set_color --bold blue)] (set_color normal) 
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function __git_status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info '<'$git_branch"*"'>'
    else
      set git_info '<'$git_branch'>'
    end

    echo -n (set_color yellow) $git_info (set_color normal) 
  end
end

function fish_prompt
  if [ (id -u) = "0" ];
    echo -n (set_color --bold yellow)"╭─"(set_color normal)
  else
    echo -n (set_color --bold blue)"╭─"(set_color normal)
  end
  __user_host
  __current_path
  __git_status
  echo -e ''
  if [ (id -u) = "0" ];
    echo (set_color --bold yellow)"╰─""# "(set_color normal)
  else
    echo (set_color --bold blue)"╰─""\$ "(set_color normal)
  end
end

function fish_right_prompt
  set -l st $status

  if [ $st != 0 ];
    echo (set_color red) ↵ $st  (set_color normal)
  end
  set_color -o 666
  date '+ %T'
  set_color normal
end
