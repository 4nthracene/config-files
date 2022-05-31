:let mapleader=","
:set number
:set autoindent
:set modifiable
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/akinsho/toggleterm.nvim.git' " Toggleterm
Plug 'https://github.com/s1n7ax/nvim-terminal.git' " nvim-terminal
Plug 'voldikss/vim-floaterm' " Floaterm

call plug#end()

:colorscheme deep-space

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap jk <Esc>
nnoremap <CR> :noh<CR><CR>
nnoremap   <silent>   <F1>    :FloatermNew<CR>
nnoremap   <silent>   <F2>    :FloatermNew<CR>
nnoremap   <silent>   <F3>    :FloatermNext<CR>

let NERDTreeShowHidden=1

set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <Leader>tt :10sp term://bash<CR>
