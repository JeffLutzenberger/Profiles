#export PATH='/Users/jefflutzenberger/dev/wf/sky/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
LICOLOR=1
alias ls='ls -G'

#alias notes='vim ~/Dropbox/wf_notes.txt'
function open_notes(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/notes ; }
function open_standup(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/standup ; }
function open_reviews(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/reviews ; }
function open_planning(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/planning ; }
function open_oneonone(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/oneonone ; }
function open_leadership(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py  -i ~/Dropbox/webfilings/leadership ; }
function open_todo(){ python ~/Dropbox/webfilings/quick_notes/quick_html.py -i ~/Dropbox/webfilings/todo/ ; }
alias notes='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/notes/notes.txt'
alias reviews='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/reviews/reviews.txt'
alias oneonone='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/oneonone/oneonone.txt'
alias todo='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/todo/todo.txt'
alias leadership='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/leadership/leadership.txt'
alias standup='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/standup/standup.txt'
alias planning='~/Dropbox/webfilings/quick_notes/quick_notes.sh ~/Dropbox/webfilings/planning/planning.txt'

alias sky="cd ~/sandbox/bigsky && source ~/dev/wf/sky/bin/activate"
alias ssc="cd ~/sandbox/server_composition && source ~/dev/wf/sky/bin/activate && PYTHONPATH=$PYTHONPATH:.:lib:test"
 
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
 
PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

#git bash auto-complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#put /usr/local/bin in front of bin to get to homebrew versions
export PATH=/usr/local/bin:$PATH

#go stuff
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOAPPENGINE=/usr/local/go_appengine
