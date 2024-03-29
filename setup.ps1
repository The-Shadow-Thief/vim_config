﻿Write-Host 'begin to clone the repo into local' -ForegroundColor Green
git clone git@github.com:chantisnake/vim_config.git .\vimfiles
Write-Host 'git clone finished, begin writing .ideavimrc' -ForegroundColor Green
$stream = [System.IO.StreamWriter] ".ideavimrc"
$stream.Write('source ~/vimfiles/idea_vim_config.vim')
$stream.Close()
Write-Host 'ideavimrc finished writing, begin writing vimrc' -ForegroundColor Green
$stream = [System.IO.StreamWriter] "_vimrc"
$stream.Write('source ~/vimfiles/gvim_config.vim')
$stream.Close()
Write-Host 'vimrc write finished, begin writing vsvimrc' -ForegroundColor Green
$stream = [System.IO.StreamWriter] "_vsvimrc"
$stream.Write('source ~/vimfiles/vs_vim_config.vim')
$stream.Close()