"Basics
set scrolloff=10
set nu
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set splitright
set secure exrc
filetype plugin on

"Icons
set encoding=UTF-8

"Plugins
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yggdroot/indentline'
Plug 'vim-test/vim-test'
Plug 'jremmen/vim-ripgrep'
Plug '907th/vim-auto-save'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
call plug#end()

"React Development
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = []
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

"Code Actions
nnoremap <silent> K :call CocAction('doHover')<CR>

nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <leader>do <Plug>(coc-codeaction)
nnoremap <leader>rn <Plug>(coc-rename)

"AnyJump
let g:any_jump_disable_default_keybindings = 1
nnoremap <leader>j :AnyJump<CR>

"Indents
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

"Auto Save
let g:auto_save = 1

"Vim Test
nnoremap <silent> <leader>t :TestNearest<CR>

let test#strategy = "neovim"
let g:test#preserve_screen = 1
let test#neovim#term_position = "topleft"
let test#neovim#term_position = "vert"
let test#neovim#term_position = "vert botright 100"
let g:test#javascript#runner = 'jest'
let test#javascript#jest#options = {
  \ 'all':   '--maxWorkers=4' 
\}

"NERDTree maps
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Syantastic
let g:syntastic_javascript_checkers = ['eslint', 'standard']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_java_checkers = ['javac', 'checkstyle']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"Theme
syntax enable
let g:airline_theme='one'
set background=dark
set termguicolors
colorscheme one

set cursorline
highlight CursorLine guibg=#403F3F
highlight Comment guibg=Gray guifg=White

lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {'node_modules'},
    layout_strategy = 'vertical',
    layout_config = {
      vertical = { width = 0.9, height = 0.95 }
    }
  }
}
EOF

"Buffers
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <leader>w :bd<CR>
nnoremap <leader>n :vnew<CR>

"Maps
let mapleader = " "

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR> :so .exrc<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

noremap <Leader>y "*y

nnoremap <C-w>+ 5<C-w>+
nnoremap <C-w>- 5<C-w>-

"Telescope maps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

hi! Normal ctermbg=NONE guibg=NONE
hi! StatusLine ctermbg=0 cterm=NONE
hi! StatusLine ctermbg=NONE cterm=NONE
