"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$CACHE/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$CACHE/dein')
  call dein#begin('$CACHE.cache/dein')


  " Let dein manage dein
  " Required:
  call dein#add('$CACHE/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#load_toml('$CONFIG/nvim/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('$CONFIG/nvim/dein/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Color Scheme
set termguicolors
colorscheme molokai

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
