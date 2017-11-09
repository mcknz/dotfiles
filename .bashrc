# ps1
[[ -s ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# git alias autocomplete
[[ -s ~/.bash/git_completion.sh ]] && source ~/.bash/git_completion.sh

# misc aliases
[[ -s ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# git aliases
[[ -s ~/.bash/git_aliases.sh ]] && source ~/.bash/git_aliases.sh

# docker aliases
[[ -s ~/.bash/docker_aliases.sh ]] && source ~/.bash/docker_aliases.sh

# angular autocomplete
[[ -s ~/.bash/angular_cli_autocomplete.sh ]] && source ~/.bash/angular_cli_autocomplete.sh

export ANSI_COLOR=true;

update_PS1 () {
  # https://stackoverflow.com/questions/42721519/git-bash-prompt-current-branch-name-stops-showing-after-git-command
  PS1="\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ "
}
shopt -u promptvars
PROMPT_COMMAND="update_PS1;history -a"