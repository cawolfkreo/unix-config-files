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
set autoindent

" My status line
set noshowmode  " We hide the mode since it will be displayed on the statusline
hi User1 term=bold cterm=bold ctermfg=234 ctermbg=249
hi User2 term=bold cterm=bold ctermfg=203 ctermbg=234
hi User3 term=bold cterm=bold ctermfg=166 ctermbg=234
" Insert mode color
hi User4 ctermfg=234 ctermbg=077
" Visual mode color
hi User5 ctermfg=234 ctermbg=208
" Replace mode color
hi User6 ctermfg=234 ctermbg=033
" Normal mode color
hi User7 ctermfg=234 ctermbg=160
hi User8 term=bold cterm=bold ctermfg=032 ctermbg=234

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
                let stline = ''
                let stline= stline . '%1*'
                let stline= stline . ' %l/%L'
                let stline= stline . ' %2*'
                let stline= stline . ' ‹‹'
                let stline= stline . ' %f'
                let stline= stline . ' ››'

                let modeColor = StatusColor()

                let stline= stline . modeColor

                let stline= stline . ' %m'
                let stline= stline . ' %F'
                let stline= stline . ' %r'
                let stline= stline . '%='
                " let stline= stline . '  %{LinterStatus()}'
                let stline= stline . ' %8*'
                let stline= stline . ' %y'
                let stline= stline . '%3*'
                let stline= stline . ' ‹‹'
                let stline= stline . " %{strftime('%R',getftime(expand('%')))}"
                let stline= stline . ' ::'
                let stline= stline . ' %n'
                let stline= stline . ' ››%*'

                return stline

endfunction
set laststatus=2
set statusline=%!StatuslineSet()
