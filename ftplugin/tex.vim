" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

"" auto start latex preview
autocmd VimEnter * LLPStartPreview

set dictionary+=C:\Users\zcsxo\vimfiles\bundle\vim-latex\ftplugin\latex-suite\dictionaries\amssymb
set dictionary+=C:\Users\zcsxo\vimfiles\bundle\vim-latex\ftplugin\latex-suite\dictionaries\braket
set dictionary+=C:\Users\zcsxo\vimfiles\bundle\vim-latex\ftplugin\latex-suite\dictionaries\upgreek
set dictionary+=C:\Users\zcsxo\vimfiles\bundle\vim-latex\ftplugin\latex-suite\dictionaries\amsfont
set dictionary+=C:\Users\zcsxo\vimfiles\bundle\vim-latex\ftplugin\latex-suite\dictionaries\myDict

" use nn to preform the jump function
imap nn <C-j>

" map notations
call IMAP('ve{', '\vect{<++>}<++>', 'tex')
call IMAP('df{', '\dfrac{<+n+>}{+d+}<++>', 'tex')
call IMAP(' * ', ' \times ', 'tex')
call IMAP(' . ', ' \dot ', 'tex')
call IMAP('(', '(<++>)', 'tex')
call IMAP('[', '[<++>]', 'tex')
call IMAP('{', '{<++>}', 'tex')
call IMAP('$', '$<++>$', 'tex')
