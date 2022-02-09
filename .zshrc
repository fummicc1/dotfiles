export PATH=/opt/homebrew/bin:$PATH
# export PATH=/usr/local/homebrew/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(starship init zsh)"

# git-completionの読み込み
# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto


export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/Contents/Home

# flutter
export PATH="$PATH:$HOME/Work/flutter/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/fumiyatanaka/.sdkman"
[[ -s "/Users/fumiyatanaka/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/fumiyatanaka/.sdkman/bin/sdkman-init.sh"

## flutter_gen
export PATH="$PATH":"$HOME/.pub-cache/bin"

# pyenv

if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

export PATH="$HOME/bitcoin/m1:$PATH"

export PATH="$PATH:opt/homebrew/Cellar/boost/lib"

export PATH="$PATH":"$HOME/Work/flutter/.pub-cache/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fumiyatanaka/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fumiyatanaka/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fumiyatanaka/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fumiyatanaka/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fumiyatanaka/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/fumiyatanaka/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fumiyatanaka/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/fumiyatanaka/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# node manager (n)
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH
