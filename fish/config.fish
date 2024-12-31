# disable fish startup message
set fish_greeting

/usr/local/bin/starship init fish | source

alias ls "eza -al"
alias la "eza -a"
alias ll "eza -l"
alias lt "eza -aT"
alias l. "eza -ald"

# up directory aliases
alias .. "cd ../"
alias ... "cd ../../"
alias .... "cd ../../../"
alias ..... "cd ../../../../"
alias ...... "cd ../../../../../"

alias cat bat

neofetch
