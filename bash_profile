# print some helpful information when login console. 
#echo "`cat ~/.motd-help`"

export EDITOR=vim

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin

###########################################################################
#  alias

alias ..='cd ..'            # go to parent dir
alias ...='cd ../..'        # go to grandparent dir
alias -- -='cd -'           # go to previous dir '-<rt>'
#alias ls='pwd; ls -GFh'     # print pwd and use color
#alias ls='ls -GFh'
alias ls='ls --color=auto'
alias ll='ls -l'         # sort list
alias l.='ll -d .*'         # list hidden files
alias lld='ll -ltd */'      # list directories
alias du='du -ch'           # disk usage 
alias du1='du -d 1'
alias h=history             
alias tree="ls -R | grep ':' | sed -e 's/://' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# what most people want from od (hexdump)
alias hd='od -Ax -tx1 -v'

# Don't store duplicate adjacent items in the history
HISTCONTROL=ignoreboth

# adjust settings according to current terminal window width
# which may have changed while the last command was running
# (which is a common occurance for vim/less/etc.)
# Note this is already set in /etc/bashrc on Fedora 8 at least.
shopt -s checkwinsize

# GREP_COLOR=bright yellow on black bg.
# use GREP_COLOR=7 to highlight whitespace on black terminals
# LANG=C for speed. See also: http://www.pixelbeat.org/scripts/findrepo
alias grep='GREP_COLOR="1;33;40" LANG=C grep --color=auto'



###########################################################################
# git_completion

alias git_completion="curl -o ~/.git-completion.bash https://github.com/git/git/raw/master/contrib/completion/git-completion.bash -OL ; curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -OL;  source ~/.git-completion.bash;  source ~/.git-prompt.sh "

source ~/.git-completion.bash
source ~/.git-prompt.sh
PS1='[\[\033[35m\]\u@\h \[\033[34m\]\W \[\033[32m\]$(__git_ps1 "(%s)")\[\033[0m\]]\$ '
