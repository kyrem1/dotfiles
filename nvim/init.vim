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
set termguicolors

colorscheme default
set background=dark

autocmd BufNew,BufRead *.s set ft=nasm  " set .s to NASM file


" Code Folding
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Closes preview window for Omnicomplete after selection
autocmd CompleteDone * pclose

""""""""""KEYMAPS""""""""""

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Set leader key to ,
let mapleader = ','

" Use <leader>b to move to the next Vim buffer
noremap <leader>b :bnext<CR>                

" Open terminal instance in working directory
nmap <leader>t :!alacritty -o font.size=7 -e bash -c "cd %:p:h;bash" &<CR> | :redraw!

" True-zen
nnoremap <leader>z :set background=dark<CR> <bar> :ZenMode<CR>

" Giles-Castel Inkscape figures
"inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
"nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

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
let g:lazygit_floating_window_border_chars= ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed 
nnoremap <silent> <leader>gg :LazyGit<CR>

" NERDTree Config
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

let g:polyglot_disabled = ['tex']
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
let g:polyglot_disabled = ['tex']
Plug 'kdheepak/lazygit.nvim'
Plug 'zhou13/vim-easyescape'
Plug 'ethanholz/nvim-lastplace'
Plug 'christoomey/vim-tmux-navigator'

" Appearance
Plug 'folke/zen-mode.nvim'

" Colors
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Syntax-Related
Plug 'shirk/vim-gas'
Plug 'elzr/vim-json'

" Latex-Related
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=0
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_latexmk = {
        \ 'aux_dir' : 'tmp/.aux',
        \ 'out_dir' : 'tmp',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-shell-escape',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
Plug 'kyazdani42/nvim-web-devicons' "always load last
call plug#end()






