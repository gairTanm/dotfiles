set regexpengine=1
set tabstop=4 softtabstop=4
set exrc
set lazyredraw
set smartindent
set expandtab
set guicursor
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set splitright
set splitbelow
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undodir
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=100
set redrawtime=10000
set re=0


call plug#begin('~/.local/share/nvim/plugged')

"NerdTree sidebar
Plug 'scrooloose/nerdtree'

"Go LSP
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Comments plugin
Plug 'tpope/vim-commentary'

"nvim-telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rbgrouleff/bclose.vim'

"gruvbox theme
Plug 'gruvbox-community/gruvbox'

"ranger, might remove?
Plug 'francoiscabrol/ranger.vim'

"prettier for vim
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'dracula/vim', { 'as': 'dracula' }

"automatic bracket pairs
Plug 'jiangmiao/auto-pairs'

"fugitive
Plug 'tpope/vim-fugitive'

"coc plugin
Plug 'neoclide/coc.nvim'
Plug 'severin-lemaignan/vim-minimap'

"change surrounding brackets, quotes
Plug 'tpope/vim-surround'

"airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

"fzf plugin
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'nanotech/jellybeans.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flazz/vim-colorschemes'
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons'

call plug#end()


source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim


if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox 


highlight Normal guibg=NONE ctermbg=NONE


let g:prettier#autoformat = 0
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark="hard"
let g:go_def_mapping_enabled = 0


au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

let g:coc_global_extensions = ['coc-solargraph']

let mapleader=" "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>e :bnext<CR>
nnoremap <leader>q :bprev<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <c-n> :call OpenTerminal()<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

