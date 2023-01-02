" Lua files
lua require('keymappings')

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
inoremap jk <esc>
inoremap kj <esc>

nnoremap gb :ls<CR>:b<Space> 
"^ Buffer switch

"set cc=100			" 80 column border
set mouse=a			" enable mouse click
set tabstop=4		" number of cols per tab
set softtabstop=4	" see multiple spaces as tabstops
set expandtab		" converts tabs to white space
set shiftwidth=4	" width for autoindents
set autoindent		" indent a new line the same amount as the line just typed
set number			" add line numbers
filetype on         " enable filetype detection
filetype plugin on  " enable filetype plugins
filetype indent on  " load file-specific indentations
syntax on			" enable syntax highlighting
set breakindent

colorscheme default " Global Colorscheme
set background=dark

autocmd BufNew,BufRead *.s set ft=nasm  " set .s to NASM file
""""""""""KEYMAPS""""""""""

" Set leader key to ,
let mapleader = ','

" Use <leader>b to move to the next Vim buffer
noremap <leader>b :bnext<CR>                

" Open terminal instance in working directory
nmap <leader>t :!alacritty -o font.size=8 -e bash -c "cd %:p:h;bash" &<CR> | :redraw!

" True-zen
nnoremap <leader>z :set background=dark<CR> <bar> :ZenMode<CR>


" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" UltiSnips Config
"let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsExpandTrigger       = '<f5>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops
let g:UltiSnipsSnippetsDirectories = [$HOME.'/.config/nvim/UltiSnips']

" LazyGit Config
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed 
nnoremap <silent> <leader>gg :LazyGit<CR>

" NERDTree Config
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

""""""""""PLUGINS""""""""""

" Plugins
call plug#begin()
" In testing
Plug 'ouuan/vim-plug-config'

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'kdheepak/lazygit.nvim'
Plug 'zhou13/vim-easyescape'
Plug 'ethanholz/nvim-lastplace'

" Appearance
Plug 'folke/zen-mode.nvim'

" Syntax-Related
Plug 'shirk/vim-gas'

" Latex-Related
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'


Plug 'kyazdani42/nvim-web-devicons' "always load last
call plug#end()






