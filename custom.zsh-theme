function git_prompt_info() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  else
    echo "$(tput setaf 7) not in git$reset_color"
  fi

}

function get_pwd() {
  print -D $PWD
}

function battery_charge() {
  if [ -e /usr/local/bin/batcharge.py ]
  then
    echo `python /usr/local/bin/batcharge.py`
  else
    echo ''
  fi
}

function get_host {
  echo '@'`hostname`''
}

function put_spacing() {
  local git=$(git_prompt_info)
  if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
  else
    git=0
  fi

  local bat=$(battery_charge)
  if [ ${#bat} != 0 ]; then
    ((bat = ${#bat} - 18))
  else
    bat=0
  fi

  local termwidth
  (( termwidth = ${COLUMNS} - 3 - ${#HOST} - ${#$(get_pwd)} - ${bat} - ${git} ))

  local spacing=""
  for i in {1..$termwidth}; do
    spacing="${spacing} " 
  done
  echo $spacing
}


# function precmd() {
# print -rP '
# $(git_prompt_info) $(battery_charge)'
# }


PROMPT='
$fg[cyan]$(get_host): $fg[yellow]$(get_pwd) %{$reset_color%}|| $(git_prompt_info) || $(battery_charge)
%{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"