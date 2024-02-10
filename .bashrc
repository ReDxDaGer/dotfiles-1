#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias up='docker compose up --build -d'
alias down='docker compose down -v'
alias ls='eza'
alias ll='eza -al'
alias yay='yay --noconfirm'
alias listpkgs='yay -Qe'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ifkash/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ifkash/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ifkash/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ifkash/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add ~/.local/bin to PATH
export PATH=/home/ifkash/.local/bin:$PATH

# Fancy shell prompt
eval "$(oh-my-posh init bash --config ~/.config/omp/themes/catppuccin_mocha.omp.json)"
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
