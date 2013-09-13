# also look at bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

alias haiku="curl -s http://haikumachine.herokuapp.com/ | sed -e 's/[{}]/''/g; s/\"text\"\:/''/g; s/\\\n/'.....'/g'"

alias subl='open -a "Sublime Text"'

alias panda='haiku && git pull'

# joseph's command prompt stuff
export PS1="\n\[\e[0;36m\]\u\[\e[0;33m\]@\h\[\e[0;31m\]${hostname}\[\e[0;37m\] \e[0;35m\][\$(git branch 2>/dev/null | grep '*' | cut -f2 -d' ')] \e[0;37m\]\w\n\[\e[0;37m\]\D{%m/%d/%Y %I:%M:%S %p} \[\e[1;37m\]> \[\e[0;37m\]";
export CLICOLOR=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
