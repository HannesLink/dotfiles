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
