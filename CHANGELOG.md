# Changelog

## [Unreleased]

### Added

- Initial release as **LTA — Logical Tmux Aliases**
- `tmux-lta.sh` with 23 aliases across 5 groups: Session, Window, Pane, Reference, Help
- `tmn`, `tma` and `tmk` functions that take a session name without `-s`/`-t` (`tmk` with no name kills the current session), with tab completion of session names on `tma`, `tmk` and `tms`
- `lta` built-in alias to display all aliases in a formatted table
- `setup.sh` and `setup-local.sh` installers that add a `source` entry to `.bashrc`
- Installers add `bind-key O select-pane -t :.-` (previous pane) to `~/.config/tmux/tmux.conf`, once
- `CHEATSHEET.md` with every alias
