# my vim configuration file
This is a my vim configuration file, mainly focus on the experience of latex, markdown and powershell on windows 10. This configuration includes configuration for vsvim, ideavim, and gvim

## install
I don't see why you need to use my key binding, but anyway...

### one liner:
```powershell
powershell -executionpolicy bypass (wget https://raw.githubusercontent.com/chantisnake/vim_config/master/setup.ps1).content
```

### manual

#### 1. clone 
Just clone this repo into your `$DOTVIM` folder, typically is `vimfiles` on windows or `.vim` on unix.

#### 2. create file
In your `$HOME` folder creates the following file:

##### _vimrc
```vim
source ~/vimfiles/gvim_config.vim
```

##### .vsvimrc
```vim
source ~/vimfiles/vs_vim_config.vim
```

##### .ideavimrc
```vim
source ~/vimfiles/idea_vim_config.vim
```

#### 3. install plugins
you need to first install [vundle](https://github.com/VundleVim/Vundle.vim).

By default this should have already been installed, if it doesn't work you need to delete `~/vimfiles/bundle/Vundle.vim` folder.

Then run 

```bash
vim _vimrc
```

Type `:PluginInstall` and that should install all the plugins automatically.

## one last thing
happy vimming!
