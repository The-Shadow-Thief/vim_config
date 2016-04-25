$location = Get-Location
Set-Location $HOME
git clone git@github.com:chantisnake/vim_config.git .\vimfiles
$stream = [System.IO.StreamWriter] "$HOME/.ideavimrc"
$stream.Write('source ./vimfiles/idea_vim_config.vim')
$stream.Close()
$stream = [System.IO.StreamWriter] "$HOME/_vimrc"
$stream.Write('source ./vimfiles/gvim_config.vim')
$stream.Close()
$stream = [System.IO.StreamWriter] "$HOME/_vsvimrc"
$stream.Write('source ./vimfiles/vs_vim_config.vim')
$stream.Close()
Set-Location $location