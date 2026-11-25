#!/bin/bash

set -e

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-lta"

INSTALL_PATH="$CONFIG_DIR/tmux-lta.sh"
HELP_PATH="$CONFIG_DIR/tmux-lta-help.sh"

BASHRC="${BASHRC:-$HOME/.bashrc}"
TMUX_CONF="${TMUX_CONF:-${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf}"
TMUX_BIND='bind-key O select-pane -t :.-'

mkdir -p "$CONFIG_DIR"

cp "$SRC_DIR/tmux-lta.sh" "$INSTALL_PATH"

if ! grep -qF "source \"$INSTALL_PATH\"" "$BASHRC" 2>/dev/null; then
    echo "" >> "$BASHRC"
    echo "source \"$INSTALL_PATH\"" >> "$BASHRC"
fi

cp "$SRC_DIR/tmux-lta-help.sh" "$HELP_PATH"
chmod +x "$HELP_PATH"

mkdir -p "$(dirname "$TMUX_CONF")"
if ! grep -qxF "$TMUX_BIND" "$TMUX_CONF" 2>/dev/null; then
    echo "$TMUX_BIND" >> "$TMUX_CONF"
fi

echo "tmux-lta installed: $INSTALL_PATH"
echo "tmux-lta help installed: $HELP_PATH"
echo "tmux key binding added: $TMUX_CONF"
echo "Run 'source ~/.bashrc' or open a new terminal to activate."
