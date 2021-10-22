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

#gwsl
export GDK_SCALE=2 #GWSL
export QT_SCALE_FACTOR=2 #GWSL
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL

# ===============
#      Theme
# ===============
setopt prompt_subst
source ~/.config/zsh/themes/purification/prompt_purification_setup

# ===============
#     Plugins
# ===============

# Dotenv:
source ~/.config/zsh/plugs/dotenv/dotenv.plugin.zsh

# zsh-autosuggestions:
source ~/.config/zsh/plugs/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source ~/.config/zsh/plugs/zsh-syntax/zsh-syntax-highlighting.zsh
