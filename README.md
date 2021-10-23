# unix-config-files

# Installing Zsh
```Zsh
pacman -S zsh
```
## Config folder
```Zsh
mkdir -p ~/.config/zsh/plugs
```

## Dotenv
```Zsh
mkdir -p ~/.config/zsh/plugs/dotenv
```
Download [this script](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/dotenv/dotenv.plugin.zsh) and save it into your dotenv folder (the one you just created). 

## Install autosuggestions
```Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugs/zsh-autosuggestions
```

## Install syntax highlighting 
```Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugs/zsh-syntax
```

## Zsh themes
```Zsh
mkdir -p ~/.config/zsh/themes
```
Download these themes and save them on the previously created folder:
* [redmarsh](./.config/zsh/themes/redmarsh.zsh)

# Vim intallation
```Zsh
mkdir -p ~/.vim/pack
```
