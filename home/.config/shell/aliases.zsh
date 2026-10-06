if (( $+commands[eza] )); then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -lag --icons --group-directories-first --git'
  alias lt='eza -T --icons --level=2'
  alias la='eza -a --icons --group-directories-first'
  alias tree='eza -T --icons=auto'
fi
(( $+commands[rg] )) && alias grep='rg --smart-case'
(( $+commands[fd] )) && alias find='fd'
