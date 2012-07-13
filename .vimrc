" vim:set ts=8 sts=2 sw=2 tw=0:

set runtimepath+=$HOME/lib/vim
set nocompatible
set history=50
set nobackup
"map Q gq

"---------------------------------------------------------------------------
"set ignorecase
set smartcase
set incsearch
"---------------------------------------------------------------------------
function FT_c_java()
  set tabstop=4
  set shiftwidth=4
  set cinoptions=:0,g0,(s1,j1,)100
  execute ":lcd " . expand("%:p:h")
endfunction

if has('autocmd')
  filetype plugin indent on
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
  autocmd BufNewFile,BufRead *.sub set filetype=html
  autocmd FileType c,cpp,cc,h,java call FT_c_java()
  autocmd FileType ruby set ts=2 sw=2 expandtab
  autocmd FileType eruby set ts=4 sw=4
  autocmd FileType perl set ts=4 sw=4
  autocmd FileType javascript set ts=4 sw=4
els
  set autoindent
endif

set noexpandtab
set backspace=2
set wrapscan
set wildmenu
set formatoptions+=mM
let format_allow_over_tw = 1
let loaded_matchparen = 1

"---------------------------------------------------------------------------
if &t_Co > 2 || has('gui_running')
  syntax on
"  colorscheme zellner
  set hlsearch
endif

set statusline=%y[%{&fenc!=''?&fenc:&enc}:%{&ff}]%F%m%r%=%c:%l%5(\ %)%3p%%
set nonumber
set ruler
"set list
"set listchars=tab:>-,extends:<,trail:-,eol:.
"set listchars=tab:>-,extends:<,trail:-
set wrap
set laststatus=2
set cmdheight=1
set showcmd
"set title

set tags=tags;/

set encoding=utf-8
set fileencoding=japan
set fileencodings=cp932,eucjp-ms,utf8
set viminfo+=n~/users/yoshie/.viminfo
set hidden
