# also look at bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# joseph's command prompt stuff
export PS1="\n\[\e[0;36m\]\u\[\e[0;33m\]@\h\[\e[0;31m\]${hostname}\[\e[0;37m\] \e[0;35m\][\$(git branch 2>/dev/null | grep '*' | cut -f2 -d' ')] \e[0;37m\]\w\n\[\e[0;37m\]\D{%m/%d/%Y %I:%M:%S %p} \[\e[1;37m\]> \[\e[0;37m\]";
export CLICOLOR=1

# Make subl command work
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Stop MacOS nagging me to use zsh
export BASH_SILENCE_DEPRECATION_WARNING=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make sure gpg tools are running in any new shell
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# Elixir convenience flags
export ERL_AFLAGS="-kernel shell_history enabled"

# Erlang install flags for faster install
export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl@1.1)"
