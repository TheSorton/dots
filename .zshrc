source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


export PATH=${HOME}/.local/bin:$PATH
alias vim='nvim'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
export LC_CTYPE=en_US.UTF-8
PROMPT="%~ %% "
