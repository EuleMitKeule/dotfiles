
export PATH="$HOME/.oh-my-posh:$PATH"
eval "$(oh-my-posh init zsh --config '~/themes/eule.omp.json')"

alias ll="ls -la"
alias c="clear"
alias h="history"

export PATH="$HOME/.local/bin:$PATH"

if [ -s "$(which nvm)" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

if [ -s "$(which ng)" ]; then
    source <(ng completion script)
fi

alias '?'='gh copilot explain'
alias '??'='gh copilot suggest -t shell'

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

export DISPLAY=:0;
