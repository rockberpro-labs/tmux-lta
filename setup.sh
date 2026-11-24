#!/bin/bash

set -e

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-lta"

INSTALL_PATH="$CONFIG_DIR/tmux-lta.sh"
HELP_PATH="$CONFIG_DIR/tmux-lta-help.sh"

BASHRC="${BASHRC:-$HOME/.bashrc}"

mkdir -p "$CONFIG_DIR"

curl -sL "https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/tmux-lta.sh" -o "$INSTALL_PATH"

if ! grep -qF "source \"$INSTALL_PATH\"" "$BASHRC" 2>/dev/null; then
    echo "" >> "$BASHRC"
    echo "source \"$INSTALL_PATH\"" >> "$BASHRC"
fi

curl -sL "https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/tmux-lta-help.sh" -o "$HELP_PATH"
chmod +x "$HELP_PATH"

echo "tmux-lta installed: $INSTALL_PATH"
echo "tmux-lta help installed: $HELP_PATH"
echo "Run 'source ~/.bashrc' or open a new terminal to activate."
