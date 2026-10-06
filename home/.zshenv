# Keep this file safe for non-interactive shells: no external commands or installs.
[[ -r "$HOME/.config/shell/path.zsh" ]] && source "$HOME/.config/shell/path.zsh"
export LESS='-R'
export LESSHISTFILE=-
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
[[ -r "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"
