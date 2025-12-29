# Шлях до Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=(sudo extract)

# Завантаження Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Зовнішні плагіни
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Автоматичне підключення всіх модулів з conf.d
if [ -d "$HOME/.config/zsh/conf.d" ]; then
  for config_file in "$HOME/.config/zsh/conf.d"/*.zsh; do
    source "$config_file"
  done
fi

# Аліаси та функції (як і було)
[[ -f "$HOME/.config/zsh/aliases.zsh" ]] && source "$HOME/.config/zsh/aliases.zsh"
[[ -f "$HOME/.config/zsh/functions.zsh" ]] && source "$HOME/.config/zsh/functions.zsh"

# FZF інтеграція
eval "$(fzf --zsh)"
