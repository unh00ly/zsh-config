BAT_THEME="Catppuccin Mocha"
export "MICRO_TRUECOLOR=1"
export MICRO_CONFIG_HOME="$HOME/.config/micro"

export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height=40% \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4 \
--color=bg:-1"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_PREVIEW_COMMAND="bat --style=numbers --color=always --line-range :500 {}"
