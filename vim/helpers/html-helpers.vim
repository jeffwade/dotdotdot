" html_snippets

" auto insert in close brackets
inoremap { {<cr>}<c-o>O
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap < <><esc>i

" single-line /inline elements
inoreabbrev <buffer> hdoc <!doctype html><cr>
inoreabbrev <buffer> hmeta <meta propName="propValue" /><esc>^/prop<cr>cw<bs>
inoreabbrev <buffer> metac <meta charset="utf-8" />
inoreabbrev <buffer> metav <meta name="viewport" content="width=device-width, initial-scale=1.0" />
inoreabbrev <buffer> htitle <title></title><esc>F<i
inoreabbrev <buffer> hlink <link href="linkURL" rel="linkRel"><esc>^/link<cr>ncw
inoreabbrev <buffer> hfont <link href="fontURL" rel="stylesheet"><esc>^/font<cr>cw
inoreabbrev <buffer> hcss <link href="css/styles.css" rel="stylesheet">
inoreabbrev <buffer> hscript <script></script><esc>F>i<space>src=""<esc>i
inoreabbrev <buffer> /! <!--commentBody --><esc>?comment<cr>cw

inoreabbrev <buffer> h1 <h1></h1><esc>F<i
inoreabbrev <buffer> h2 <h2></h2><esc>F<i
inoreabbrev <buffer> h3 <h3></h3><esc>F<i
inoreabbrev <buffer> h4 <h4></h4><esc>F<i
inoreabbrev <buffer> h5 <h5></h5><esc>F<i
inoreabbrev <buffer> h6 <h6></h6><esc>F<i
inoreabbrev <buffer> p <p></p><esc>F<i
inoreabbrev <buffer> img <img src="imgSource" alt="imgAltText" width="imgWidth" height="imgHeight"><esc>F</img<cr>ncw


" Comments
inoreabbrev <buffer> comm <!-- comment --><esc>2F<space>ct<space>

" code block elements
inoreabbrev <buffer> hhtml <html lang="en"><cr></html><esc>O<bs><space>
inoreabbrev <buffer> hhead <head><cr></head><esc>O<bs><space>
inoreabbrev <buffer> hbody <body><cr></body><esc>O<bs><space>

inoreabbrev <buffer> hheader <header><cr></header><esc>O<bs><space>
inoreabbrev <buffer> hmain <main role="main"><cr></main><esc>O<bs><space>
inoreabbrev <buffer> hnav <nav role="navigation"><cr></nav><esc>O<bs><space>
inoreabbrev <buffer> hfooter <footer><cr></footer><esc>O<bs><space>

inoreabbrev <buffer> harticle <article><cr></article><esc>O<bs><space>
inoreabbrev <buffer> hsection <section><cr></section><esc>O<bs><space>

inoreabbrev <buffer> ul <ul><cr><li>listItem</li><cr></ul><esc>k/listItem<cr>cw
inoreabbrev <buffer> ol <ol><cr><li>listItem</li><cr></ol><esc>k/listItem<cr>cw
inoreabbrev <buffer> li <li>listItem</li><esc>2F</listItem<cr>ncw

inoreabbrev <buffer> dl <dl><cr><dt>descriptionTerm</dt><cr><dd>descriptionDetails<dd><cr></dl><esc>kk/description<cr>cw
inoreabbrev <buffer> dt <dt>descriptionTerm</dt><esc>2F</description<cr>cw
inoreabbrev <buffer> dd <dd>descriptionDetails</dd><esc>2F</description<cr>cw

inoreabbrev <buffer> div <div><cr></div><esc>O<bs><space>

" project starter
iabbrev <buffer> hinit <!doctype html><cr><html lang="en"><cr></html><esc>O<head><cr><meta charset="utf-8"><cr><meta name="viewport" content="width=device-width, initial-scale=1.0"><cr><title>initTitle</title><esc>o<link href="initFontURL" rel="stylesheet"><cr><link href="css/styles.css" rel="stylesheet" type="text/css"><cr></head><cr><body><cr><header role="banner"><cr>initHeader<cr></header><cr><main role="main"><cr>initBody<cr></main><cr><footer role="contentinfo"><cr></footer><cr></body><esc>gg/init<cr>ncw

" HTML Entities
inoreabbrev <buffer> &; &amp;
inoreabbrev <buffer> &> &gt;
inoreabbrev <buffer> &< &lt;
inoreabbrev <buffer> &c &copy;
inoreabbrev <buffer> &n &ndash;
inoreabbrev <buffer> &m &mdash;
inoreabbrev <buffer> &r &reg;
inoreabbrev <buffer> &t &trade;
inoreabbrev <buffer> &/ &frasl;
inoreabbrev <buffer> &l &nbsp;

augroup html_indentation
  " auto indent html on load and write
  " autocmd BufWritePre,BufRead *.html :normal gg=G:noh<cr>

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
