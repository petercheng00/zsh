# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -U select-word-style
select-word-style bash


[ -n "$EAT_SHELL_INTEGRATION_DIR" ] && \
    source "$EAT_SHELL_INTEGRATION_DIR/zsh"

alias ls='ls --color=auto'

alias ec2="mosh -p 60606 pc-ec2"
alias nom-ec2="ssh -fN -L 4003:localhost:4000 pc-ec2"
