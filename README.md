<p align="center">
  <img src="resources/img/logo.png" alt="tmux-lta" width="200">
</p>

<h1 align="center">Logical Tmux Aliases</h1>

<p align="center">A prefix-based shorthand system that turns tmux commands into muscle memory.</p>

## Install

**Linux / macOS / WSL:**

```bash
curl -sL https://raw.githubusercontent.com/rockberpro-labs/tmux-lta/main/setup.sh | bash
```

Then reload your shell (`source ~/.bashrc`).

The script copies two files to `~/.config/tmux-lta/` (or `$XDG_CONFIG_HOME/tmux-lta/`) and adds a `source` line to `~/.bashrc`. It also adds `bind-key O select-pane -t :.-` (previous pane) to `~/.config/tmux/tmux.conf`. Your `~/.tmux.conf` stays untouched.

Manual install and uninstall: [GUIDE.md](GUIDE.md).

## How It Reads

`tm` picks tmux. A **group letter** picks the object (none for sessions, `w` for window, `p` for pane). A **suffix** is the first letter of the action.

```
tml   → tmux list-sessions      tmwn  → tmux new-window
tmn   → tmux new-session        tmwl  → tmux list-windows
tma   → tmux attach-session     tmwk  → tmux kill-window
tmk   → tmux kill-session
tmd   → tmux detach             tmph  → tmux split-window -h
                                tmpv  → tmux split-window -v
                                tmpz  → tmux resize-pane -Z
```

Run `lta` to see every alias right in your terminal.

## Sessions take a name

`tmn`, `tma` and `tmk` are small functions, so the session name needs no flag:

```bash
tmn work        # tmux new-session -s work
tmn work -d     # same, detached (extra arguments pass through)
tma work        # tmux attach-session -t work
tmk work        # tmux kill-session -t work
tmk             # no name: kills the current session, like tmux kill-session
```

`tma`, `tmk` and `tms` tab-complete session names.

## The Pattern

| Prefix | Object  | Aliases                                                                                   |
| ------ | ------- | ----------------------------------------------------------------------------------------- |
| `tm`   | session | `tml` list, `tmn` new, `tma` attach, `tmd` detach, `tmr` rename, `tms` switch, `tmk` kill, `tmka` kill all others, `tmks` kill server |
| `tmw`  | window  | `tmwn` new, `tmwl` list, `tmwk` kill, `tmwr` rename, `tmws` select                       |
| `tmp`  | pane    | `tmph` split horizontal, `tmpv` split vertical, `tmpl` list, `tmpk` kill, `tmpz` zoom      |

**Other aliases:** `tm` tmux, `tmlk` list-keys, `tmlc` list-commands, `lta` help. Printable version: [CHEATSHEET.md](CHEATSHEET.md).

## Why This One?

- **Learnable, not memorizable.** Same prefix+suffix rule as [git-lga](https://github.com/rockberpro-labs/git-lga) and [docker-lda](https://github.com/rockberpro/docker-lda).
- **`lta` built-in reference.** Forget an alias? One command lists them all.
- **Non-invasive.** One sourced file; no changes to `~/.tmux.conf` (one key binding goes in `~/.config/tmux/tmux.conf`).
- **No dependencies.** Plain bash.

---

[GUIDE.md](GUIDE.md) · [CHEATSHEET.md](CHEATSHEET.md) · [CHANGELOG.md](CHANGELOG.md)
