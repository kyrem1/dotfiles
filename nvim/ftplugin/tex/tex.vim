" Local colorscheme
colorscheme nord
set background=dark
let maplocalleader = ','



" Compilation & update 
noremap <leader>r <Cmd>update<CR><Cmd>VimtexCompileSS<CR>


" latexmk options
let g:vimtex_compiler_method = 'latexmk'
"let g:vimtex_latexmk_background = 1


" Suppress warnings for QuickFix
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \ 'LaTeX Warning: .\+ float specifier changed to',
      \ 'LaTeX hooks Warning',
      \ 'Package siunitx Warning: Detected the "physics" package:',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \]


" Zathura reader options
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=0
let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_flavor = "latex"

" Open Viewer
nmap <leader>v <plug>(vimtex-view)

" no aligning & in align/aling* envs.
let g:vimtex_indent_on_ampersands = 0


" Turn off automatic indenting in enumerated environments
"let g:tex_indent_items=0
"

noremap <C-t> <Cmd>VimtexTocOpen<CR>
"let layerlist = ['content', 'todo', 'include']
"let g:vimtex_toc_config = {
"    \ 'layers': layerlist }
                       
