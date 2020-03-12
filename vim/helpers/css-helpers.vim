" SNIPPETS

" hit ii. for a class selector, ii# for an id selector
inoreabbrev <buffer> i >selectorName {<cr>selectorProp: selectorPropVal;<cr>}<esc>3k/selector<cr>cw<bs>
inoreabbrev <buffer> s >selectorName {<cr>selectorProp: selectorPropVal;<cr>}<esc>3k/selector<cr>cw<bs>
" hit i.. for a class selector, i## for an id selector
inoreabbrev <buffer> . >selectorName {<cr>selectorProp: selectorPropVal;<cr>}<esc>3k/selector<cr>cw<bs>
inoreabbrev <buffer> # >selectorName {<cr>selectorProp: selectorPropVal;<cr>}<esc>3k/selector<cr>cw<bs>

" insert mediaquery
inoreabbrev <buffer> @ media queryConditions {<cr>querySelectors<cr>}<esc>2k/query<cr>:nohlsearch<cr>cw
inoreabbrev <buffer> mq @media only screen and (queryConditions) {<cr>querySelectors<cr>}<esc>2k/query<cr>:nohlsearch<cr>cw

" new section of selectors (selector group)
inoreabbrev <buffer> sg <cr>/*selectorGroupTitle {{{*/<cr>selectorGroupContent<cr>/* end selectorGroupTitle }}}*/<cr><esc>3k0/selectorGroup<cr>zocw

" oo<space> inserts a new property
inoreabbrev <buffer> o >propName: propValue;<esc>0/prop<cr>cw<bs>
inoreabbrev <buffer> O >propName: propValue;<esc>0/prop<cr>cw<bs>
inoreabbrev <buffer> p >propName: propValue;<esc>0/prop<cr>cw<bs>

" insert a comment
inoreabbrev <buffer> / /*commentBody */<esc>?commentBody<cr>cw

augroup fold_indentation
  autocmd!
  " create a fold based on indentation
  autocmd FileType css nnoremap <buffer> <localleader>f Vatzf
augroup END

" OPERATORS
" in comment
onoremap <buffer> ic :<c-u>execute "normal! k/\\/\\*\\zs.\\+\\ze\\*\\/\r:nohlsearch\rvt*"<cr>
" next comment
onoremap <buffer> nc :<c-u>execute "normal! /\\/\\*\\zs.\\+\\ze\\*\\/\r:nohlsearch\rvt*"<cr>
" previous comment
onoremap <buffer> pc :<c-u>execute "normal! ?\\/\\*\\zs.\\+\\ze\\*\\/\r:nohlsearch\rvt*"<cr>

" " around next selector
" onoremap <buffer> as :<c-u>execute "normal! /{\\(\\n\\(^\\c[a-z0-9 -:\",;.]\\+\\)\\)\\+\\n}\r:nohlsearch\r0V/}\r"<cr>
" " around selector
" onoremap <buffer> as :<c-u>execute "normal! ?{\r:nohlsearch\r0V/}\r"<cr>
" " in selector
" onoremap <buffer> is :<c-u>execute "normal! ?{\\n^\\zs\r"<cr>
