# Check if symlink works

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/daanr/.oh-my-zsh"

# Get antigen with curl -L git.io/antigen > antigen.zsh
source ~/antigen.zsh

# load the oh-my-zsh library
antigen use oh-my-zsh

# load builts in 
antigen bundle git 
antigen bundle pip
antigen bundle command-not-found # suggest commands
antigen bundle z # jump around 
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions # Game changer!
antigen bundle jimeh/zsh-peco-history

# theme
# antigen theme robbyrussell
antigen theme agnoster

# apply changes
antigen apply

# add autocomplete for the todoist app
source "/src/github.com/sachaos/todoist/todoist_functions.sh"

# add some stuff for dnote
highlight_dnote_view() {
	dnote view "$1" | awk '/\-+content\-+/{f=1;next}f' | glow -
}
alias dv=highlight_dnote_view

# raw mardkwon output
dnote_raw_view() {
	dnote view "$1" | awk '/\-+content\-+/{f=1;next}f' | head --lines=-1
}
alias dnote-raw=dnote_raw_view


# give view of all todos today and one's that are overdue
todoist_today() {
	todoist list -filter '(today | overdue)'
}
alias today=todoist_today


# start spotifyd daemon
start_spotifyd_daemon() {
	systemctl --user enable spotifyd --now && spt
}

alias start-spotify=start_spotifyd_daemon


