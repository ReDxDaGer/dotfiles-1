#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias up='docker compose up --build -d'
alias down='docker compose down -v'
alias ls='eza --group-directories-first --icons'
alias ll='eza -al --group-directories-first --icons'
alias yay='yay --noconfirm'
alias paru='paru --noconfirm'
alias listpkgs='yay -Qe'
alias grep='grep --color=auto'
alias fman='compgen -c | fzf | xargs tldr'
alias cat='bat -p'
alias logout='sudo pkill -u $USER'
PS1='[\u@\h \W]\$ '

# NixOS stuff
alias config='nvim /etc/nixos/configuration.nix'
alias rebuild='sudo nixos-rebuild switch'
alias prune='nix-collect-garbage --delete-old'

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
export EDITOR="nvim"

# Some poetry?
# Credits to @Spirizeon
echo "From the moment I understood the weakness of GUI, it disgusted me.
I craved the strength and certainty of the shell. I aspire to the purity of the Blessed Terminal.
You kind cling to the GUI, as if it will not decay and fail you.
One day the crude biomass that you call Windows will wither, and you will beg my kind to save you.
But I am already saved, for the Terminal is immortal!"
