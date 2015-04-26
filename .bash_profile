echo .bash_profile running

if [ -f "$HOME/.bash_ps1" ]; then
. "$HOME/.bash_ps1"
fi

export CLICOLOR=1

export PATH="${HOME}/Sources/github.com/arcanist/bin:${PATH}"
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"

export EDITOR=vim

alias activate=". /Users/beverly/Code/karmicapp/bin/activate"

# Related to gpg problems
alias gpgstart="gpg-agent --daemon --enable-ssh-support --log-file /Users/beverly/.gpg-agent.log --write-env-file ~/.gpg-agent-info"
alias gpgpid="ps aux | grep gpg-agent-info"
alias sgpg="source ~/.gpg-agent-info"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/beverly/Sandbox/Google/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/beverly/Sandbox/Google/google-cloud-sdk/completion.bash.inc'

# append to history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# Increase length of history saved
export HISTSIZE=10000
export HISTCONTROL=ignoreboth

# for cordova stuff
export WORKSPACE='/Users/beverly/Code/ripcord-cordova-app-stuff/dash'

# virtualenvwrapper
export WORKON_HOME="$HOME/Envs"
source "/usr/local/bin/virtualenvwrapper.sh"