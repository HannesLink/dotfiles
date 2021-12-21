" Ansible stuff
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=manual
autocmd FileType yaml setlocal ai ts=2 sts=2 sw=2 expandtab

" Python stuff
autocmd FileType python setlocal ai ts=4 sts=4 sw=4 expandtab

" Generic settings
scriptencoding utf-8
set encoding=utf-8
set number
set relativenumber
set title
set cursorline
set ignorecase
set smartcase
set list listchars=tab:»\ ,trail:·
set viminfo='100,<1000,s100,h
set path+=**
set wildmenu

if $TERM == "xterm-256color"
  set t_Co=256
endif

if $TERM == "screen-256color"
  set t_Co=256
endif

"make vim save and load the folding of the document each time it loads"
"also places the cursor in the last place that it was left."
au BufWinLeave ?* mkview 1
au BufWinEnter ?* silent loadview 1

" Keymaps
let mapleader = "\<space>"
" source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC<CR>

" Snippets
nnoremap ,html :-1read $HOME/.config/vim/skeleton.html<CR>4jwf>a

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/vim/plugins/airline.vim
source ~/.config/vim/plugins/fugitive.vim
source ~/.config/vim/plugins/nerdtree.vim

call plug#end()
