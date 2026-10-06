# Install plugins during explicit setup, never from shell startup.
for _dotfiles_plugin in \
  /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
  /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
  /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
  "$HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"; do
  if [[ -r $_dotfiles_plugin ]]; then source "$_dotfiles_plugin"; break; fi
done

source "$HOME/.config/shell/alias-tips.zsh"

for _dotfiles_plugin in \
  /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh \
  /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh \
  /usr/local/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh \
  "$HOME/.local/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"; do
  if [[ -r $_dotfiles_plugin ]]; then source "$_dotfiles_plugin"; break; fi
done
unset _dotfiles_plugin
