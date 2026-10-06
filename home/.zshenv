# Keep this file safe for non-interactive shells: no external commands or installs.
[[ -r "$HOME/.config/shell/path.zsh" ]] && source "$HOME/.config/shell/path.zsh"
export LESS='-R'
export LESSHISTFILE=-
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
# CLI aliases also available in non-interactive agent shells.
(( $+commands[woodpecker-cli] && ! $+commands[woodpecker] )) && alias woodpecker='woodpecker-cli'
(( $+commands[scw] && ! $+commands[scaleway] )) && alias scaleway='scw'
(( $+commands[pass-cli] && ! $+commands[proton-pass] )) && alias proton-pass='pass-cli'
(( $+commands[tofu] && ! $+commands[opentofu] )) && alias opentofu='tofu'
[[ -r "$HOME/.zshenv.local" ]] && source "$HOME/.zshenv.local"
