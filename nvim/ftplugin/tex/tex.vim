
" Local colorscheme
colorscheme nord


let maplocalleader = ','

" Compilation & update 
noremap <leader>r <Cmd>update<CR><Cmd>VimtexCompileSS<CR>

" Suppress warnings for QuickFix
let g:vimtex_quickfix_open_on_warning = 0

" Use Zathura as reader
let g:vimtex_view_method = 'zathura'

" Open Viewer
nmap <leader>v <plug>(vimtex-view)

let g:tex_flavor = 'latex'  " recognize tex files as latex

" setting indentation
" setlocal expandtab
" setlocal autoindent
" setlocal tabstop=4
" setlocal softtabstop=4
" setlocal shiftwidth=4

" Turn off automatic indenting in enumerated environments
"let g:tex_indent_items=0
