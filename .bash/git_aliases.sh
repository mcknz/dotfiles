#!/bin/bash

gmsqparam()
{
	git merge "$1" --squash
}

gfresh()
{
	current_branch_name="$(git symbolic-ref HEAD 2>/dev/null | cut -d'/' -f 3)"
	git checkout master
	git tf pull --deep --rebase
	git checkout $current_branch_name
	git rebase master
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
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias gsp='git stash pop'
alias gss='git stash show'
alias gst='git stash'
alias gtfco='git tf checkin --deep'
alias gtfpl='git checkout master;git tf pull --deep --rebase'
alias gx='gitx --all'







