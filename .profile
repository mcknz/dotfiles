# ps1
[[ -s ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# misc aliases
[[ -s ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# git aliases
[[ -s ~/.bash/git_aliases.sh ]] && source ~/.bash/git_aliases.sh

# git alias autocomplete
[[ -s ~/.bash/git_completion.sh ]] && source ~/.bash/git_completion.sh

# docker aliases
[[ -s ~/.bash/docker_aliases.sh ]] && source ~/.bash/docker_aliases.sh

# angular autocomplete
[[ -s ~/.bash/angular_cli_autocomplete.sh ]] && source ~/.bash/angular_cli_autocomplete.sh

export ANSI_COLOR=true;
PROMPT_COMMAND='history -a'