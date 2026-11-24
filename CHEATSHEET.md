# LTA Cheat Sheet

Every alias in `tmux-lta.sh`. `tmn`, `tma` and `tmk` are functions that take an optional session name.

## Session (`tm`)

| Alias  | Command                              |
| ------ | ------------------------------------ |
| `tm`   | `tmux`                               |
| `tml`  | `tmux list-sessions`                 |
| `tmn`  | `tmux new-session [-s name]`         |
| `tma`  | `tmux attach-session [-t name]`      |
| `tmd`  | `tmux detach`                        |
| `tmr`  | `tmux rename-session`                |
| `tms`  | `tmux switch-client -t`              |
| `tmk`  | `tmux kill-session [-t name]`        |
| `tmka` | `tmux kill-session -a`               |
| `tmks` | `tmux kill-server`                   |

## Window (`tmw`)

| Alias  | Command                    |
| ------ | -------------------------- |
| `tmwn` | `tmux new-window`          |
| `tmwl` | `tmux list-windows`        |
| `tmwk` | `tmux kill-window`         |
| `tmwr` | `tmux rename-window`       |
| `tmws` | `tmux select-window -t`    |

## Pane (`tmp`)

| Alias  | Command                   |
| ------ | ------------------------- |
| `tmph` | `tmux split-window -h`    |
| `tmpv` | `tmux split-window -v`    |
| `tmpl` | `tmux list-panes`         |
| `tmpk` | `tmux kill-pane`          |
| `tmpz` | `tmux resize-pane -Z`     |

## Reference

| Alias  | Command              |
| ------ | -------------------- |
| `tmlk` | `tmux list-keys`     |
| `tmlc` | `tmux list-commands` |
| `lta`  | show this list       |
