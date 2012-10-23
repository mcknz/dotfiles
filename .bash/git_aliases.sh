#!bash

gmsqparam()
{
git merge "$1" --squash
}

gfresh()
{
	if [ "$1" = "" ]
	then echo "need branch name"
	else
		git checkout master
		git tf pull --rebase
		git checkout "$1"
		git rebase master
	fi
}

alias gs='git status'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdt='git difftool'
alias gdw='git diff --word-diff'
alias gfsh=gfresh
alias gh='git hist'
alias gk='gitk --all&'
alias glog='git glog'
alias gm='git checkout master'
alias gmt='git mergetool'
alias gmsq=gmsqparam
alias go='git checkout'
alias gom='git checkout master'
alias grbm='git rebase master'
alias gsp='git stash pop'
alias gss='git stash show'
alias gst='git stash'
alias gtfco='git tf checkin --no-lock'
alias gtfpl='git checkout master;git tf pull --rebase'
alias gx='gitx --all'







