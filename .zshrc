# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

#load colors
autoload colors && colors

for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK RESET; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' (%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${GREEN}%n${WHITE}:${PWD/#$HOME/~}${YELLOW}${vcs_info_msg_0_}${RESET}\$ '


LICOLOR=1
alias ls='ls -G'

#import our private and secret environment variables
source ~/.zshrc_env_vars
