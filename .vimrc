syntax on

set noerrorbells
set tabstop=4  
set shiftwidth=4  "when shift with > its 4 spaces
set number 
set relativenumber
set expandtab "conv tab -> spaces
set smartindent
set nowrap
set smartcase "do case sensitive searching 
set noswapfile "no nonsense swapfiles
set backspace=2
set incsearch
set scrolloff=8
set nobackup
set nowritebackup
set colorcolumn=80
set signcolumn=yes
set mouse=n  "allow mouse to drag splits
set hlsearch
imap jj <Esc>

"install plugins
call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'tomasiser/vim-code-dark'
call plug#end()

colorscheme codedark
let g:airline_theme = 'codedark'

"creates space to show lightline info
set laststatus=2

"coc specific stuff
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"colorscheme gruvbox
"set background=dark

"key to press into special mode
let mapleader = " "

"meep zop
"n - normal mode nore - not recursive map = map
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 50<CR>
