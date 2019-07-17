if &compatible
	set nocompatible 
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif
	call dein#end()
	call dein#save_state()
endif
filetype plugin indent on
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set mouse=a
set clipboard+=unnamedplus
set noshowmode

" Color scheme stuff
set termguicolors

call dein#add('haishanh/night-owl.vim')
if (has("termcolors"))
    set termguicolors
endif

colorscheme night-owl

call dein#add('junegunn/fzf.vim')
call dein#add('itchyny/lightline.vim')
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }
