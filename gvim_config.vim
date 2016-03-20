source ~/vimfiles/general_vim_config.vim

" use ctrl+c ctrl+v to do copy and paste
imap <C-v> <S-Insert>
vmap <C-c> y

" use ctrl-; to correct spell in insert mode
imap <C-;> <Esc>[s1z=`]a

" color scheme
colorscheme focuspoint 
" font
set guifont=Consolas:h10:cANSI
" hide tool bar
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

set backspace=2 " make backspace work like most other apps

" When opening a file remember last cursor position
if has("autocmd")
  augroup restoreCursor
    autocmd!
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line ("'\"") <= line("$") |
          \   exe "normal! g'\"" |
          \ endif
  augroup END
endif
