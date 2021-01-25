setopt interactive_comments

# remove duplicates
typeset -U path

# add rust to path
path=('/Users/ali/.cargo/bin' $path)


fpath=(~/.zsh/completion $fpath)
fpath+=~/.zfunc

autoload -Uz compinit && compinit -i

# set up vi-mode 
bindkey -v

PROMPT='%F{blue}%1~%f %# '

# this was from docker  [[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
echo "[[ $commands[kubectl] ]] && source <(kubectl completion zsh)" >> ~/.zshrc 

export GOPATH=$HOME/dev/go
export GO111MODULE=on

path=($GOPATH/bin $path)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ali/strangeworks/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ali/strangeworks/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ali/strangeworks/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ali/strangeworks/tools/google-cloud-sdk/completion.zsh.inc'; fi
[[ /Users/ali/strangeworks/tools/google-cloud-sdk/bin/kubectl ]] && source <(kubectl completion zsh)
# [[  ]] && source <(kubectl completion zsh)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
