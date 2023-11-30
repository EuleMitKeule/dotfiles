
export PATH="$HOME/.oh-my-posh:$PATH"
eval "$(oh-my-posh init zsh --config '~/.oh-my-posh/themes/eule.omp.json')"

alias ll="ls -la"
alias c="clear"
alias h="history"

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source <(ng completion script)

eval "$(github-copilot-cli alias -- "$0")"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export DISPLAY=:0;
