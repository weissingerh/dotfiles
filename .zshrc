export ZSH="/Users/weissingerh/.oh-my-zsh"
export PATH=$PATH:~/.composer/vendor/bin
export PATH=/opt/homebrew/opt/php@8.0:$PATH 

. $(brew --prefix)/etc/profile.d/z.sh

ZSH_THEME="cloud"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char

alias refresh="exec zsh -l"
alias composer="php /usr/local/bin/composer.phar"
alias ll='ls -la'
alias ..="cd .."
alias password="pwgen -yBn 32 1 | pbcopy | echo 'Password copied to pasteboard.'"
alias pw="password"
alias pubkey="pbcopy < ~/.ssh/id_rsa.pub"

alias c="code ."
alias o="open ."
alias i="idea ."

alias revertcommit="git reset --soft HEAD~1"

alias pa="php artisan"
alias phpserver="php -S localhost:8000"
alias po="pa optimize"
alias poc="pa optimize:clear"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

alias nr="npm run"
alias nrw="nr watch"

alias f#="dotnet new console -lang F#"
alias mvnw="./mvnw"

alias mkdown="glow"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"

alias cleardns="sudo killall -HUP mDNSResponder" 
