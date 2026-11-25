# Install Guide

Details that the [README](README.md) leaves out: what the setup script does, how to install by hand, and how to remove everything.

## What the setup script does

The script makes three changes:

1. It copies `tmux-lta.sh` and `tmux-lta-help.sh` to `~/.config/tmux-lta/` (or `$XDG_CONFIG_HOME/tmux-lta/`).
2. It adds a `source` line to `~/.bashrc` (or the file in `$BASHRC`), once, however many times you run it.
3. It adds `bind-key O select-pane -t :.-` (previous pane on `prefix O`) to `~/.config/tmux/tmux.conf` (or `$XDG_CONFIG_HOME/tmux/tmux.conf`, or the file in `$TMUX_CONF`), once.

Read the source before you run it: [setup.sh](setup.sh).

## Manual install

```bash
mkdir -p ~/.config/tmux-lta

curl -sL https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/tmux-lta.sh \
  -o ~/.config/tmux-lta/tmux-lta.sh

curl -sL https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/tmux-lta-help.sh \
  -o ~/.config/tmux-lta/tmux-lta-help.sh && chmod +x ~/.config/tmux-lta/tmux-lta-help.sh

echo 'source ~/.config/tmux-lta/tmux-lta.sh' >> ~/.bashrc

mkdir -p ~/.config/tmux
echo 'bind-key O select-pane -t :.-' >> ~/.config/tmux/tmux.conf
```

## Install from a clone

```bash
./setup-local.sh
```

## Uninstall

```bash
rm -r ~/.config/tmux-lta
# remove the source line from ~/.bashrc manually
# remove the "bind-key O" line from ~/.config/tmux/tmux.conf manually
```

## Files

[setup.sh](setup.sh) · [setup-local.sh](setup-local.sh) · [tmux-lta.sh](tmux-lta.sh) · [tmux-lta-help.sh](tmux-lta-help.sh)
