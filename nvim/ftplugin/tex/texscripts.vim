" Subfiles Script

function Subfile()
      call inputsave()
      let subname = input('Enter subfile name: ')
      call inputrestore()
      call system('subfile ' . subname)
      let cmd = 'normal! A' . '\subfile{./tex/' . subname . '.tex}'
      execute "normal! A\<cr>"
      execute cmd
      execute "normal! A\<cr>"
endfunction

nnoremap <localleader>sf :call Subfile()<CR>
