call plug#begin('~/.vim/plugged')
Plug 'haishanh/night-owl.vim'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLED_TRUE_COLOR=1

syntax enable
colorscheme night-owl

if &term =~ '265color'
  set t_ut=
endif
