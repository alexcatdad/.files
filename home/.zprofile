# Login-only Homebrew environment. Non-login shells get binary paths via .zshenv.
if [[ $OSTYPE == darwin* ]] && (( $+commands[brew] )); then
  eval "$(brew shellenv)"
fi
# Restore user binary priority after macOS path_helper/Homebrew initialization.
[[ -r "$HOME/.config/shell/path.zsh" ]] && source "$HOME/.config/shell/path.zsh"
[[ -r "$HOME/.config/shell/machine.zsh" ]] && source "$HOME/.config/shell/machine.zsh"
