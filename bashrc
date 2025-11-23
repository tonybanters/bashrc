export PATH="$HOME/.emacs.d/bin:$PATH"
export MANPAGER="nvim +Man!"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'

alias ls='eza -l --icons'
alias la='eza -a --icons'
alias ll='eza -la --icons'
alias lo='ll --sort=modified'

# nixos stuff
alias nrs='sudo nixos-rebuild switch --flake ~/nixos-dotfiles?submodules=1#nixos-btw'
alias nc='nvim ~/nixos-dotfiles/.'

# oxwm stuff
alias asdf="cd ~/repos/oxwm; nix develop"

# stuff that wont really change
alias ..="cd .."
alias ...='../..'
alias ....="cd ../.."
alias .....='../../..'
alias ......="cd ../../.."
alias .......='../../../..'
alias ........="cd ../../../.."
alias .........='../../../../..'
alias ...........='../../../../../..'
alias grep='grep --color=auto'

# programming
alias zt="zig test"

# Source private aliases (SSH hosts, secrets, etc)
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"

nitch
eval "$(direnv hook bash)"
