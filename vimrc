call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/nerdtree'
	Plug 'ggreer/the_silver_searcher'
	Plug 'jremmen/vim-ripgrep'
	Plug 'dreilly/vim-colors-off'
	Plug 'morhetz/gruvbox'
	Plug 'chriskempson/base16-vim'
	Plug 'christoomey/vim-system-copy'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'ervandew/supertab'
	Plug 'rhysd/vim-clang-format'
	Plug 'xavierd/clang_complete'
	Plug 'scrooloose/syntastic'
	Plug 'Raimondi/delimitMate'
	Plug 'racer-rust/vim-racer'
	Plug 'rust-lang/rust.vim'
	Plug 'vimwiki/vimwiki'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

filetype plugin indent on
filetype plugin on
syntax enable

let mapleader = "\<Space>"
set backspace=indent,eol,start
set hidden
set relativenumber
set number
set wildmenu
set nowrap
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set laststatus=0
set confirm
set mouse=a
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=2
set softtabstop=2
set tabstop=2
set t_Co=256
set smarttab
set history=50
set incsearch
set linebreak
set shortmess+=A
set shortmess+=I
set cursorline
set guicursor=
set scrolloff=10
set completeopt-=preview
set background=dark
set timeoutlen=1000 ttimeoutlen=0
set noswapfile
colorscheme gruvbox

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
nmap <Leader>mw :MarkdownPreview<CR>

"Better split buffer movements
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

"Syntax binds
nmap <Leader>i :set syntax=whitespace<CR>
nmap <Leader>I :set syntax=on<CR>

nmap <Leader>z :NERDTree<CR>
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>c :NERDTreeClose<CR>

"FZF Binds
nmap <Leader>p :GFiles<CR>
nmap <Leader>P :Files<CR>
nmap ; :Buffers<CR>

"FZF settings
let g:ctrlp_max_files = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:indent_guides_auto_colors = 0
let g:ackprg = 'ag --nogroup --nocolor --column'
"set rtp+=/usr/local/opt/fzf

"Rust
let g:racer_cmd = "/home/daniel/.cargo/bin/racer"
let g:rustfmt_autosave = 1
augroup Racer
	autocmd!
	autocmd FileType rust nmap <buffer> gd		<Plug>(rust-def)
	autocmd FileType rust nmap <buffer> <leader>gd		<Plug>(rust-doc)
augroup END
let g:racer_experimental_completer = 1
"/Rust

augroup cf_ft
		au!
		autocmd BufNewFile,BufRead *.cfm	set syntax=off
augroup END


