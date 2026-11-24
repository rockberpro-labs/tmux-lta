# ==============================================================================
# LTA — Logical Tmux Aliases
# https://github.com/rockberpro-labs/tmux-lta
#
# Install:
#   curl -sL https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/setup.sh | bash
#
# Manual install:
#   echo 'source ~/.config/tmux-lta/tmux-lta.sh' >> ~/.bashrc && source ~/.bashrc
# ==============================================================================

# --- SESSION ---
alias tm='tmux'
alias tml='tmux list-sessions'
alias tmd='tmux detach'
alias tmr='tmux rename-session'
alias tms='tmux switch-client -t'
alias tmka='tmux kill-session -a'
alias tmks='tmux kill-server'
tmn() { tmux new-session ${1:+-s "$1"} "${@:2}"; } # tmux new-session [-s name]
tma() { tmux attach-session ${1:+-t "$1"}; } # tmux attach-session [-t name]
tmk() { tmux kill-session ${1:+-t "$1"}; } # tmux kill-session [-t name]

# --- WINDOW ---
alias tmwn='tmux new-window'
alias tmwl='tmux list-windows'
alias tmwk='tmux kill-window'
alias tmwr='tmux rename-window'
alias tmws='tmux select-window -t'

# --- PANE ---
alias tmph='tmux split-window -h'
alias tmpv='tmux split-window -v'
alias tmpl='tmux list-panes'
alias tmpk='tmux kill-pane'
alias tmpz='tmux resize-pane -Z'

# --- REFERENCE ---
alias tmlk='tmux list-keys'
alias tmlc='tmux list-commands'

# --- HELP ---
alias lta='"${XDG_CONFIG_HOME:-$HOME/.config}/tmux-lta/tmux-lta-help.sh"'

# --- COMPLETION ---
_tmux_lta_sessions() {
    COMPREPLY=($(compgen -W "$(tmux list-sessions -F '#S' 2>/dev/null)" -- "${COMP_WORDS[COMP_CWORD]}"))
}
complete -F _tmux_lta_sessions tma tmk tms
