[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export GOPATH=~/dev/go
# prompt
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
set -o vi 

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

export PATH=${GOPATH}/bin:"$HOME/.cargo/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ali/dev/tools/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ali/dev/tools/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ali/dev/tools/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ali/dev/tools/google-cloud-sdk/completion.bash.inc'; fi

# Google Cloud Authentication
export GOOGLE_APPLICATION_CREDENTIALS=~/dev/gc/launchpad-e36d5c464e06.json

# Set up Java 
export JAVA_HOME=${HOME}/dev/tools/jdk/current/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

export BYOBU_PREFIX=/usr/local


