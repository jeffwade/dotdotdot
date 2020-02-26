" markdown helpers

" OPERATORS

" change '#' headings
onoremap <buffer> ih :<c-u>execute "normal! ?^#\\+\\s\\=\\zs.\\+\r:nohlsearch\rvg_"<cr>
onoremap <buffer> ah :<c-u>execute "normal! ?^#\\+.\\+\r:nohlsearch\rV"<cr>

" change '----' or '====' headings
onoremap <buffer> iH :<c-u>execute "normal! ?^[=-][=-]\\+\r:nohlsearch\rkvg_"<cr>
onoremap <buffer> aH :<c-u>execute "normal! ?^[=-][=-]\\+\r:nohlsearch\rVk"<cr>

" inside next email
onoremap <buffer> n@ :<c-u>execute "normal! /\\c[a-z0-9_\\-\\.]\\+@\\c[a-z0-9_\\-\\.]\\+\r:nohlsearch\rvE"<cr>
