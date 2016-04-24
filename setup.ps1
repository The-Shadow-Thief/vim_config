git clone git@github.com:chantisnake/vim_config.git .\vimfiles
echo 'source ./vimfiles/idea_vim_config.vim' |Out-File $HOME\.ideavimrc
echo 'source ./vimfiles/vs_vim_config.vim' |Out-File $HOME\_vsvimrc
echo 'source ./vimfiles/gvim_config.vim' |Out-File $HOME\_vimrc