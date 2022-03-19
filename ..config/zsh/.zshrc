# ===============
#    zsh auto
# ===============
autoload -Uz compinit
compinit
autoload colors
colors

# ===============
#     Alias
# ===============
source ~/.config/zsh/aliases.zsh

# ===============
#    Variables
# ===============
export ZDOTDIR=$HOME"/.config/zsh"
export ZSH_CACHE_DIR=$ZDOTDIR"/cache"
export EDITOR="vim"
export COLORTERM=truecolor
setopt AUTO_CD
setopt HIST_FIND_NO_DUPS
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt SHARE_HISTORY
zle_highlight=("paste:none")

#gwsl
export GDK_SCALE=2 #GWSL
export QT_SCALE_FACTOR=2 #GWSL
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL

# Key binds for home,
# del and end keys
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# Key binds for
# ctrl+arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# ===============
#     Message
# ===============
$ZDOTDIR/message.zsh

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
