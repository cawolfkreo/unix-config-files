" Pathogen package manager:
execute pathogen#infect()
set nu
" set rnu               " To show relative numberline
syntax on
filetype plugin indent on

" Search options
set hls is              " is = incremental search
set smartcase   " ignore case when searching lowercase text
set ignorecase  " ignore case when searching (this forces it)

" Mouse enabled
set mouse=a

" Indentation"
set tabstop=4
set shiftwidth=4
set autoindent

" My status line
set noshowmode  " We hide the mode since it will be displayed on the statusline
hi User1 term=bold cterm=bold ctermfg=234 ctermbg=203
hi User2 term=bold cterm=bold ctermfg=203 ctermbg=234
hi User3 term=bold cterm=bold ctermfg=166 ctermbg=234
" Insert mode color
hi User4 ctermfg=234 ctermbg=077
" Visual mode color
hi User5 ctermfg=234 ctermbg=208
" Replace mode color
hi User6 ctermfg=234 ctermbg=033
" Normal mode color
hi User7 ctermfg=015 ctermbg=124
hi User8 term=bold cterm=bold ctermfg=042 ctermbg=234

" Numbers taken from: https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

" This calculates the status line color based on the current mode
function! StatusColor()
                let b:text = ' %n* [m]'
                if (mode()=='i')
                                let b:text = substitute(b:text, 'n', '4', 'g')
                                let b:text = substitute(b:text, 'm', 'Insert', 'g')
                elseif (mode()=='v')
                                let b:text = substitute(b:text, 'n', '5', 'g')
                                let b:text = substitute(b:text, 'm', 'Visual', 'g')
                elseif (mode()=='R')
                                let b:text = substitute(b:text, 'n', '6', 'g')
                                let b:text = substitute(b:text, 'm', 'Replace', 'g')
                elseif (mode()=='n')
                                let b:text = substitute(b:text, 'n', '7', 'g')
                                let b:text = substitute(b:text, 'm', 'Normal', 'g')
                else
                                let b:text = substitute(b:text, 'n', '7', 'g')
                                let b:text = substitute(b:text, 'm', 'Normal', 'g')
                endif
                return b:text
endfunction

" This function creates the structure of the status line
function! StatuslineSet()
                " Unicode chars: https://unicode-table.com/en/
                let stline = ''
                let stline.= '%1*'
                let stline.= ' %l/%L'
                let stline.= ' %2*'
                let stline.= ' ❴'
                "let stline.= ' 🗎%t'
                let stline.= ' 📄%t'
                let stline.= ' ❵'

                let modeColor = StatusColor()
                let stline.= modeColor

                let stline.= ' %m'
                let stline.= ' %F'
                let stline.= ' %r'
                let stline.= '%='
                " let stline.= '  %{LinterStatus()}'
                let stline.= ' %8*'
                let stline.= ' %y'
                let stline.= '%3*'
                let stline.= '〘'
                let stline.= " %{strftime('%R',getftime(expand('%')))}"
                "let stline.= ' ::'
                let stline.= ' ⋮'
                let stline.= ' %n'
                let stline.= ' 〙%*'

                return stline
endfunction
set laststatus=2
set statusline=%!StatuslineSet()
