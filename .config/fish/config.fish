if status is-interactive
  if not set -q TMUX
    exec tmux
  end

  macchina
  # Commands to run in interactive sessions can go here
end

set -g fish_greeting 'Hey, bae!'

function fish_prompt
  string join "" -- (set_color red) (prompt_pwd) (set_color normal) ' ぁ '
end

abbr -a b --function projectdo_build
abbr -a r --function projectdo_run
abbr -a t --function projectdo_test
abbr -a p --function projectdo_tool

set -x GPG_TTY (tty)

function sa 
  eval (ssh-agent -c) 
  ssh-add
end
