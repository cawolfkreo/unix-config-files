# unix-config-files

# Pacman
Don't forget to uncomment `Color` in `/etc/pacman.conf` and also add `ILoveCandy` to the file.

# Installing Zsh
```Zsh
pacman -S zsh
```
## Config folder
```Zsh
mkdir -p ~/.config/zsh/plugs
mkdir -p ~/.config/zsh/cache
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
* [fletcherm stand alone version](./.config/zsh/themes/fletcherm.zsh-theme)

## Zsh aliases
Download this file and save it on `~/.config/zsh/`:
[aliases.zsh](./.config/zsh/aliases.zsh)

## Welcome message
Download the two `message.*` files ([the zhs](./.config/zsh/message.zsh) one and the [the txt](./.config/zsh/message.txt) one) and save them in the same folder where the aliases are.

## .zshrc
Download the [.zshrc file from this repo](./.config/zsh/.zshrc) and remember to save it in your `~/.config/zsh/` folder.

## .zshenv
Download the [.zshenv or the zsh env variables file](./zshenv) and remember to save it in your `~/` folder.

# Vim intallation
## Pathogen
Follow the installation section [on the official repo.](https://github.com/tpope/vim-pathogen) Pathogen auto-updates your packages so it's not a bad option for a vim plugin manager.

## vim searchlight
When searching on Vim it can be confusing to know where exactly the cursor is when iterating on each result, this plugin improves vim highlighting for search results. 
```Zsh
cd .vim/bundle && \
git clone https://github.com/PeterRincker/vim-searchlight
```
## vim .vimrc
Download the [.vimrc file from this repo](./.vimrc) and remember to save it in your `~` folder.

# Alacritty (Optional)
This is a simple terminal emulator that should work on most OS. It is lightweight but it uses hardware acceleration to work, if your PC is not supported, you might want to check if your hardware is compatible. 

## alacritty.yml
```Zsh
mkdir -p ~/.config/alacritty
```
Download this file and save it on `~/.config/alacritty/`:
[alacritty.yml](./.config/alacritty/alacritty.yml)

## alacritty and vim
```Vim
set ttymouse=sgr
```
There is a ""feature"" on alacritty/vim and this is necessary for vim to read the mouse input from the terminal, add it to the `.vimrc`.
