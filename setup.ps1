$location = Get-Location
Set-Location $HOME
git clone git@github.com:chantisnake/vim_config.git .\vimfiles
echo 'source .\vimfiles\idea_vim_config.vim' |Out-File .ideavimrc
echo 'source .\vimfiles\vs_vim_config.vim' |Out-File _vsvimrc
echo 'source .\vimfiles\gvim_config.vim' |Out-File _vimrc