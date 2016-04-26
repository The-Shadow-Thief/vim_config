$location = Get-Location
Write-Host 'set location to home'
Set-Location $HOME
git clone git@github.com:chantisnake/vim_config.git .\vimfiles
$stream = [System.IO.StreamWriter] ".ideavimrc"
$stream.Write('source ~/vimfiles/idea_vim_config.vim')
$stream.Close()
$stream = [System.IO.StreamWriter] "_vimrc"
$stream.Write('source ~/vimfiles/gvim_config.vim')
$stream.Close()
$stream = [System.IO.StreamWriter] "_vsvimrc"
$stream.Write('source ~/vimfiles/vs_vim_config.vim')
$stream.Close()