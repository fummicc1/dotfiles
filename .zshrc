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

# homebrew
export PATH="/opt/homebrew/sbin:$PATH"

# flutter
export PATH="$PATH:$HOME/Work/flutter/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/fumiyatanaka/.sdkman"
[[ -s "/Users/fumiyatanaka/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/fumiyatanaka/.sdkman/bin/sdkman-init.sh"

## flutter_gen
export PATH="$PATH":"$HOME/.pub-cache/bin"

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

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

# node manager (n)
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

# PyPy
export PATH=$PATH:"/Users/fumiyatanaka/Work/pypy3.8-v7.3.9-osx64/bin"

export PATH=$PATH:"/Applications/Android Studio.app/Contents/jre/Contents/Home/bin"

# Git Delta
export PATH=$PATH:"/Users/fumiyatanaka/delta-0.12.1-x86_64-apple-darwin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fumiyatanaka/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/fumiyatanaka/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fumiyatanaka/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/fumiyatanaka/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# youtube-dl
setopt +o nomatch


# global mint
export PATH=/Users/fumiyatanaka/.mint/bin:$PATH

# poetry
export PATH=$HOME/.local/bin:$PATH


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

source ~/perl5/perlbrew/etc/bashrc

export PATH="$PATH:/usr/local/opt/perl/bin"

# pyenv

if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
