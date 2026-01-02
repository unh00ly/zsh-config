# Шлях до Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=(sudo extract)

# Завантаження Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Зовнішні плагіни
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# --- Автоматичне підключення модулів з conf.d у правильному порядку ---
ZSH_CONF_DIR="$HOME/.config/zsh/conf.d"

if [ -d "$ZSH_CONF_DIR" ]; then
  # Використовуємо (n) для числового сортування в Zsh
  for config_file in "$ZSH_CONF_DIR"/*.zsh(n); do
    if [ -r "$config_file" ]; then
      source "$config_file"
    fi
  done
fi

# Аліаси та функції (як і було)
[[ -f "$HOME/.config/zsh/aliases.zsh" ]] && source "$HOME/.config/zsh/aliases.zsh"
[[ -f "$HOME/.config/zsh/functions.zsh" ]] && source "$HOME/.config/zsh/functions.zsh"

# FZF інтеграція
eval "$(fzf --zsh)"
