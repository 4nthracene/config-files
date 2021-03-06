let mapleader=","

set number
set autoindent
set modifiable
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set nohlsearch

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'https://github.com/akinsho/toggleterm.nvim.git' " Toggleterm
Plug 'https://github.com/s1n7ax/nvim-terminal.git' " nvim-terminal
Plug 'voldikss/vim-floaterm' " Floaterm
Plug 'nvim-treesitter/nvim-treesitter' " Treesitter
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs' " autopairs
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'branch': 'release/0.x'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

lua require("anthracene.toggleterm")
lua require("anthracene.treesitter")
lua require("anthracene.bufferline")

colorscheme afterglow

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap jk <Esc>
set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-h> :BufferLineCycleNext<CR>
nnoremap <C-l> :BufferLineCyclePrev<CR>
nnoremap <C-u> :Files<CR>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
nnoremap <cr> :noh<cr>

