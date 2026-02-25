# Enable colors
export TERM=xterm-256color

# Starship Prompt
eval "$(starship init bash)"

# Fastfetch on startup
if [[ -f /usr/bin/fastfetch ]]; then
    fastfetch
fi

# Aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first'
alias la='eza -a --icons'

alias vim='nvim'
alias gte='gnome-text-editor'
alias gten='gnome-text-editor ./newfile'
alias gtew='gnome-text-editor -n '
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias grep='grep --color=auto'
# Zoxide (smart cd)
eval "$(zoxide init bash)"

# Better history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend

# Auto correct minor cd mistakes
shopt -s cdspell

# Enable completion
[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

# Custom PS1 fallback (if starship not loaded)
PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\] \$ "
