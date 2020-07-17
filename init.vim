let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" User configurations
set fenc=utf-8
set autoread
set autoindent
set showcmd
set showmatch
set wildmode=list:longest
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set clipboard=unnamed

" Tab settings
set number
set tabstop=2
set shiftwidth=2
set expandtab

if !exists('g:vscode')
  runtime $XDG_CONFIG_HOME/nvim/dein/init.vim
  runtime $XDG_CONFIG_HOME/nvim/coc/snippets.vim
endif
