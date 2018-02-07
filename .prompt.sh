__prompt () {
  history -a
  history -c
  history -r

  local NO_COLOR="\[\e[0m\]"
  local BLACK="\[\033[0;30m\]"
  local RED="\[\033[0;31m\]"
  local GREEN="\[\033[1;32m\]"
  local YELLOW="\[\033[0;033m\]"
  local BLUE="\[\033[1;34m\]"
  local MAGENTA="\[\033[1;35m\]"
  local CYAN="\[\033[1;36m\]"
  local GRAY="\[\033[0;90m\]"
  local LIGHT_GRAY="\[\033[1;37m\]"
  local LIGHT_RED="\[\033[1;91m\]"
  local LIGHT_GREEN="\[\033[1;92m\]"
  local LIGHT_YELLOW="\[\033[1;93m\]"
  local LIGHT_BLUE="\[\033[1;94m\]"
  local LIGHT_MAGENTA="\[\033[1;95m\]"
  local LIGHT_CYAN="\[\033[1;96m\]"

  local BASE_COLOR="$NO_COLOR"
  local BRANCH=`git branch 2> /dev/null | grep \* | sed 's/* //'`

  if [[ "$BRANCH" = "" ]]; then
    BRANCH=`git status 2> /dev/null | grep "On branch" | sed 's/# On branch //'`
  fi

  if [[ "$BRANCH" = "" ]]; then
    BRANCH=" $BRANCH"
  fi

  local STATUS=`git status 2>/dev/null`
  local PROMPT_COLOR=""
  local STATE=" "
  local NOTHING_TO_COMMIT="# Initial commit"
  local BEHIND="# Your branch is behind"
  local AHEAD="# Your branch is ahead"
  local UNTRACKED="# Untracked files"
  local DIVERGED="have diverged"
  local CHANGED="# Changed but not updated"
  local TO_BE_COMMITED="# Changes to be committed"
  local CHANGES_NOT_STAGED="# Changes not staged for commit"
  local LOG=`git log -1 2> /dev/null`

  if [ "$STATUS" != "" ]; then
    if [[ "$STATUS" =~ "$CHANGES_NOT_STAGED" ]]; then
      PROMPT_COLOR="${RED}"
      STATE=""
    elif [[ "$STATUS" =~ "$NOTHING_TO_COMMIT" ]]; then
      PROMPT_COLOR="${RED}"
      STATE=""
    elif [[ "$STATUS" =~ "$DIVERGED" ]]; then
      PROMPT_COLOR="${RED}"
      STATE="${STATE}${RED}↕${NO_COLOR}"
    elif [[ "$STATUS" =~ "$BEHIND" ]]; then
      PROMPT_COLOR="${RED}"
      STATE="${STATE}${RED}↓${NO_COLOR}"
    elif [[ "$STATUS" =~ "$AHEAD" ]]; then
      PROMPT_COLOR="${RED}"
      STATE="${STATE}${RED}↑${NO_COLOR}"
    elif [[ "$STATUS" =~ "$CHANGED" ]]; then
      PROMPT_COLOR="${RED}"
      STATE=""
    elif [[ "$STATUS" =~ "$TO_BE_COMMITED" ]]; then
      PROMPT_COLOR="${RED}"
      STATE=""
    else
      PROMPT_COLOR="${GREEN}"
      STATE=""
    fi

    if [[ "$STATUS" =~ "$UNTRACKED" ]]; then
      STATE="${STATE}${YELLOW}*${NO_COLOR}"
    fi

    PS1="\n${LIGHT_GRAY}${USER} ${GRAY}in ${LIGHT_GRAY}\w ${GRAY}on ${LIGHT_GRAY}${BRANCH}${STATE} ${NO_COLOR}\n\$ "
  else
    PS1="\n${LIGHT_GRAY}${USER} ${GRAY}in ${LIGHT_GRAY}\w ${NO_COLOR}\n\$ "
  fi
}

PROMPT_COMMAND=__prompt
