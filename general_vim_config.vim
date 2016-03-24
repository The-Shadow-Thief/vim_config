" let d uses black hole register, so that the thing you delete will not be
" copied to clipboard
nnoremap D d
vnoremap D d
nnoremap DD dd
nnoremap d "_d
nnoremap dd "_dd
vnoremap d "_d
vnoremap p "_dP

" change the key to go to the end of the line
map ; $

" quick way to exits the insert mode
imap jj <Esc>
imap kk <Esc>
" quick way to enter visual mode
imap vv <Esc>v


" use the shift enter to change line
imap <S-CR> <Esc>o

" Shift lines up or down ~i
noremap <C-j> ddp
noremap <C-k> ddkkp

" force vim to access system clipboard
set clipboard=unnamed 

" set line number.
set number
:highlight LineNr ctermfg=grey

" set tab width as 4
set expandtab
set shiftwidth=4
set softtabstop=4

" set control key board short cut
:behave xterm

" open spell check
set spell

" map leader to comma
let mapleader=","

" save when lost focus or switch tab
set autowrite
autocmd FocusLost * :wa

" show matching bracket
set showmatch       

