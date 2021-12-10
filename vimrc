" Ansible stuff
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=manual
autocmd FileType yaml setlocal ai ts=2 sts=2 sw=2 expandtab

" Python stuff
autocmd FileType python setlocal ai ts=4 sts=4 sw=4 expandtab

" Generic settings
scriptencoding utf-8
set encoding=utf-8
set number
set cursorline
set list listchars=tab:»\ ,trail:·
set viminfo='100,<1000,s100,h

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

" Dracula
Plug 'dracula/vim', { 'as': 'dracula' }

augroup DraculaOverrides
    autocmd!
    autocmd ColorScheme dracula highlight DraculaBoundary guibg=none
    autocmd ColorScheme dracula highlight DraculaDiffDelete ctermbg=none guibg=none
    autocmd ColorScheme dracula highlight DraculaComment cterm=italic gui=italic
    autocmd User PlugLoaded colorscheme dracula
augroup end

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"let g:airline_theme = 'dracula'
let g:airline_theme='base16_dracula'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '

set noshowmode
call plug#end()
"doautocmd User PlugLoaded
"colorscheme dracula
