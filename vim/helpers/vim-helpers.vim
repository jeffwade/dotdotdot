" vim helpers

setlocal foldmethod=marker

" INSERT mode abbreviations
inoreabbrev iab inoreabbrev
inoreabbrev cab cnoreabbrev
inoreabbrev nmap nnoremap
inoreabbrev nno nnoremap
inoreabbrev vmap vnoremap
inoreabbrev vno vnoremap
inoreabbrev imap inoremap
inoreabbrev ino inoremap
inoreabbrev omap onoremap
inoreabbrev ono onoremap
inoreabbrev au autocmd
inoreabbrev buf <buffer>
inoreabbrev bu <buffer>
inoreabbrev le leader
inoreabbrev ll localleader

" COMMAND mode abbreviations
cnoreabbrev iab inoreabbrev
cnoreabbrev cab cnoreabbrev

" snippets
inoreabbrev aug augroup augName<cr>autocmd!<cr>autocmd augFirst<cr>augroup END<esc>03k^/aug<cr>:noh<cr>cw


" FUNCTIONS

" print file of current highlights
function! HiFile()
  let i = 1
  while i <= line("$")
    if strlen(getline(i)) > 0 && len(split(getline(i))) > 2
      let w = split(getline(i))[0]
      exe "syn match " . w . " /\\(" . w . "\\s\\+\\)\\@<=xxx/"
    endif
    let i += 1
  endwhile
endfunction

" print sample colors
function! VimColors()
  let num = 255
  while num >= 0
    exec 'hi col_'.num.' ctermbg='.num.' ctermfg=white'
    exec 'syn match col_'.num.' "ctermbg='.num.':...." containedIn=ALL'
    call append(0, 'ctermbg='.num.':....')
    let num = num - 1
  endwhile
endfunction
