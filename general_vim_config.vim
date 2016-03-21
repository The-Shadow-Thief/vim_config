filetype off                  " required
set nocompatible              " be iMproved, required
set rtp+=C:/Users/zcsxo/.vim

" open syntax highlighting
syntax on
filetype plugin on    " required
filetype indent on 

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/ 
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Windows-PowerShell-Syntax-Plugin'
Plugin 'TxtBrowser'
Plugin 'taglist.vim'
Plugin 'mattn/webapi-vim'
Plugin 'cd01/poshcomplete-vim'
Plugin 'PProvost/vim-ps1'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'
Plugin 'Shougo/unite.vim'
Plugin 'shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vim-latex/vim-latex'
Plugin 'mattn/emmet-vim'
Plugin '907th/vim-auto-save'
Plugin 'airblade/vim-gitgutter'  
Bundle 'chase/focuspoint-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ynkdir/vim-bgimg'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" vim markdown 
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" enable powershell syntax plug
autocmd BufNewFile,BufReadPost *.ps1 set filetype=ps1

" nerd tree
" autostart nerdtree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim when there is only nerdtree windows
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" nerdtree show hidden file
let NERDTreeShowHidden=1

" nerdtree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "-",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "%",
    \ "Clean"     : "~",
    \ "Unknown"   : "?"
    \ }

"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<Right>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" set auto save event 
let g:auto_save_events = ["TextChanged"] 
let g:auto_save_silent = 1  " do not display the auto-save notification

" neocomplete use tab instead of enter
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" enable neocomplcache at startup
let g:neocomplcache_enable_at_startup = 1
" set neocomplcache source list
if !exists('g:neocomplcache_sources_list')
  let g:neocomplcache_sources_list = {}
endif
"let g:neocomplcache_disabled_sources_list.tex =
"\ ['dictionary_complete']

"" Enable neocomplete at startup
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase
"let g:neocomplete#enable_smart_case = 1

" enable airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"" the latex-box auto compile
"let g:LatexBox_latexmk_preview_continuously=1 
"let g:LatexBox_latexmk_async=1
"let g:LatexBox_quickfix=2

"" setting pdf viewer for vimtex
"let g:vimtex_view_general_viewer = 'SumatraPDF'
"let g:vimtex_view_general_options
    "\ = '-reuse-instance -forward-search @tex @line @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'"  
"" enable vimtex 
"" Load Vimtex
"let &rtp  = '~/.vim/bundle/vimtex,' . &rtp
"let &rtp .= ',~/.vim/bundle/vimtex/after'

" vim latex settings
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nh\ $*
" optional: starting with vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" the following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" set compile rule 
let g:tex_compilerule_dvi = 'latexmk $*'
if !exists('g:neocomplete#sources')
  let g:neocomplete#sources = {}
endif
let g:neocomplete#sources.tex = ['dictionary', 'UltiSnips', 'file', 'omni']

" set viewer for vimlatex preview
let g:livepreview_previewer = 'sumatrapdf.exe'

" vim r location
let g:vimrplugin_r_path="C:\\Program Files\\R\\R-3.2.3\\bin\\x64"

" set dictionary
let TxtBrowser_Dict_Url='http://cn.bing.com/dict/search?q=text'
" set search engine
let TxtBrowser_Search_Engine='http://global.bing.com/search?q=test'

" set previm realtime preview
let g:previm_enable_realtime=1

" navigate split windows with alt+arrow
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

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

