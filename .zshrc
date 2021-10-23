# ===============
#    zsh auto
# ===============
autoload -Uz compinit
compinit
setopt AUTO_CD

# ===============
#     Alias
# ===============
source ~/.config/zsh/aliases.zsh

# ===============
#    Variables
# ===============
export EDITOR="vim"
export COLORTERM=truecolor
setopt HIST_FIND_NO_DUPS
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt SHARE_HISTORY

# Key binds for home,
# del and end keys
#bindkey  "^[[H"   beginning-of-line
#bindkey  "^[[F"   end-of-line
#bindkey  "^[[3~"  delete-char

# Key binds for
# ctrl+arrow
#bindkey "^[[1;5C" forward-word
#bindkey "^[[1;5D" backward-word

# ===============
#      Theme
# ===============
setopt prompt_subst
source ~/.config/zsh/themes/redmarsh.zsh

# ===============
#     Plugins
# ===============

# Dotenv:
source ~/.config/zsh/plugs/dotenv/dotenv.plugin.zsh

# zsh-autosuggestions:
source ~/.config/zsh/plugs/zsh-autosuggestions/zsh-autosuggestions.zsh


# zsh-syntax-highlighting
source ~/.config/zsh/plugs/zsh-syntax/zsh-syntax-highlighting.zsh
