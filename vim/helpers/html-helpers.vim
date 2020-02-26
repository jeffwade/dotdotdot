" html_snippets

" single-line /inline elements
inoreabbrev <buffer> doc <!doctype html><cr>
inoreabbrev <buffer> meta <meta propName="prpValue"><esc>^/prop<cr>cw<bs>
inoreabbrev <buffer> metac <meta charset="utf-8">
inoreabbrev <buffer> metav <meta name="viewport" content="width=device-width, initial-scale=1.0">
inoreabbrev <buffer> title <title></title><esc>F<i
inoreabbrev <buffer> link <link href="linkURL" rel="linkRel"><esc>^/link<cr>ncw
inoreabbrev <buffer> font <link href="fontURL" rel="stylesheet"><esc>^/font<cr>cw
inoreabbrev <buffer> css <link href="css/styles.css" rel="stylesheet">
inoreabbrev <buffer> script <script></script><esc>F>i<space>src=""<esc>i

inoreabbrev <buffer> h1 <h1></h1><esc>F<i
inoreabbrev <buffer> h2 <h2></h2><esc>F<i
inoreabbrev <buffer> h3 <h3></h3><esc>F<i
inoreabbrev <buffer> h4 <h4></h4><esc>F<i
inoreabbrev <buffer> h5 <h5></h5><esc>F<i
inoreabbrev <buffer> h6 <h6></h6><esc>F<i
inoreabbrev <buffer> p <p></p><esc>F<i
inoreabbrev <buffer> img <img src="imgSource" alt="imgAltText" width="imgWidth" height="imgHeight"><esc>F</img<cr>ncw


" code block elements
inoreabbrev <buffer> html <html lang="en"><cr></html><esc>O<bs><space>
inoreabbrev <buffer> head <head><cr></head><esc>O<bs><space>
inoreabbrev <buffer> body <body><cr></body><esc>O<bs><space>

inoreabbrev <buffer> header <header><cr></header><esc>O<bs><space>
inoreabbrev <buffer> main <main><cr></main><esc>O<bs><space>
inoreabbrev <buffer> nav <nav role="navigation"><cr></nav><esc>O<bs><space>
inoreabbrev <buffer> footer <footer><cr></footer><esc>O<bs><space>

inoreabbrev <buffer> article <article><cr></article><esc>O<bs><space>
inoreabbrev <buffer> section <section><cr></section><esc>O<bs><space>

inoreabbrev <buffer> ul <ul><cr><li>listItem</li><cr></ul><esc>k/listItem<cr>cw
inoreabbrev <buffer> ol <ol><cr><li>listItem</li><cr></ol><esc>k/listItem<cr>cw
inoreabbrev <buffer> li <li>listItem</li><esc>2F</listItem<cr>ncw

inoreabbrev <buffer> dl <dl><cr><dt>descriptionTerm</dt><cr><dd>descriptionDetails<dd><cr></dl><esc>kk/description<cr>cw
inoreabbrev <buffer> dt <dt>descriptionTerm</dt><esc>2F</description<cr>cw
inoreabbrev <buffer> dd <dd>descriptionDetails</dd><esc>2F</description<cr>cw

inoreabbrev <buffer> div <div><cr></div><esc>O<bs><space>

" project starter
iabbrev <buffer> init <!doctype html><cr><html lang="en"><cr></html><esc>O<head><cr><meta charset="utf-8"><cr><meta name="viewport" content="width=device-width, initial-scale=1.0"><cr><title>initTitle</title><esc>o<link href="initFontURL" rel="stylesheet"><cr><link href="css/styles.css" rel="stylesheet" type="text/css"><cr></head><cr><body><cr><header role="banner"><cr>initHeader<cr></header><cr><main role="main"><cr>initBody<cr></main><cr><footer role="contentinfo"><cr></footer><cr></body><esc>gg/init<cr>ncw


augroup html_indentation
  " auto indent html on load and write
  autocmd BufWritePre,BufRead *.html :normal gg=G:noh<cr>

  " create a fold based on indentation
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup html_livePreview
  " open html files in browser on write
  autocmd BufWritePost *.html :normal :silent w<CR> :silent ! open %<CR>
augroup END

augroup html_movements
  " until the closing tag [needs to be reworked to only delete what is between
  " the tags---right now it doesn't care if it's inside tags or not?
  " autocmd FileType html onoremap b /</<cr>
augroup END
