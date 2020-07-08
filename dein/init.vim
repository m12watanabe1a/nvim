"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ubuntu/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ubuntu/.cache/dein')
  call dein#begin('/home/ubuntu/.cache/dein')


  " Let dein manage dein
  " Required:
  call dein#add('/home/ubuntu/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#load_toml('/home/ubuntu/.config/nvim/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('/home/ubuntu/.config/nvim/dein/dein_lazy.toml', {'lazy': 1})

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