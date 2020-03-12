" 'basics ------------------------------------{{{

" change leader from \ to ,
let mapleader =","
let maplocalleader ="="

" enter command mode
nnoremap ; :
vnoremap ; :

" open command list
nnoremap <leader>; q:

" enter shell command
nnoremap <leader>: :!<space>

" write the current buffer
noremap <silent> <leader>w :w<cr>:echo "♪♩♫♩ I'm trying to be like Jesus! 😇"<cr>

" close all buffers and discard changes
noremap <leader><s-q> :qa!<cr>

" END basics }}}

" 'global options & 'settings ----------------------------------------{{{

" change the terminal's title
set title

" detect filetype for sytax highlighting, etc
filetype on

" CURSORLINE OPTIONS
hi cursorline term=bold cterm=bold ctermbg=234

" keep N lines around the cursor always visible
set scrolloff=20

" FOLDING OPTIONS
set foldmethod=manual
hi Folded ctermbg=236 cterm=italic

" STATUS LINE
set statusline=[%n]\        " bufferNumber:
set statusline+=%f          " relative filepath
set statusline+=%=          " space
set statusline+=%m          " Modified flag
set statusline+=%=          " space
set statusline+=%l/%L\      " [currentLine:totalLines]
set statusline+=(%P)\       " Percentage in window
set statusline+=%y\         " FileType

" SEARCH
set hlsearch               " highlight search
set incsearch              " incremental search
set ignorecase             " ignore case in search
set smartcase              " be smart on case matching

" LINE NUMBERS
set relativenumber         " relative line numbers
set nu                     " absolute line number at cursor

" line wrapping
set breakindent            " wrapped lines are indented properly
set formatoptions=l        " don't break lines in the middle of words
set linebreak


" WRAPPING MOVEMENTS
set backspace=eol,start,indent
set whichwrap+=<,>,[,]

" don't beep
set novisualbell
set noerrorbells 
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:_

" hide buffers on close (until they are deleted or vim exits)
set hidden

" some servers have issues with backup files
set nobackup
set nowritebackup
set noswapfile

" indentation
set expandtab
set shiftwidth=2
set shiftround
set tabstop=2
set softtabstop=2
set smarttab

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show the status line
set laststatus=2


" END options }}}

" 'plugins ----------------------------{{{

" specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')


" install NERDTree (file browser in vim)
Plug 'scrooloose/nerdtree'
" NERDTree shortcut
noremap <silent> <leader>/ :NERDTree<cr>:echo "🤓 🌳"<cr>
" Shortcut for quicklook from NERDTree
augroup  nerdtree_helpers
  autocmd!
  autocmd FileType nerdtree nmap <buffer> <space> mq
augroup END


" install code completion engine: coc (conqueror of completion) make your vim/neovim as smart as vscode
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" use tab for trigger completion with characters ahead and navigate.
" use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<c-n>" :
      \ <sid>check_back_space() ? "\<tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Check syntax in Vim asynchronously and fix files, (linting)
Plug 'dense-analysis/ale'
let g:ale_fixers = {
    \'javascript': ['eslint']
    \ }
nnoremap <leader>af <Plug>(ale_fix)

"install matchup (matching tags)
Plug 'andymass/vim-matchup'
" matchup shortcut (needs to remap to work with the function)
nmap <leader>. %
set matchpairs+=<:>
augroup  matchup_helpers
  autocmd!
  autocmd FileType c,cpp,java,javascript set mps+==:;
augroup END

" install quick commenting
Plug 'tpope/vim-commentary'
" Commentary shortcut (toggle Comment on current line)
noremap <silent> <leader><space> :Commentary<cr>:echo "💬 ↔️  💭"<cr>


" looking into forking this plugin and adding support for macOS
" for now use <localleader>o to open the project in the browser
" without live preview / server support
"
" install Bracey (plugin for live html, css, and javascript editing in vim) 
" Plug 'turbio/bracey.vim'
" Usage :Bracey
" Bracey shortcut
" nnoremap <leader>b :Bracey<CR>

call plug#end()

" END plugins }}}

" 'mappings ---------------------------{{{

" ESCAPE (Just kidding)
inoremap <silent> jk <esc>:noh<cr>
cnoremap <silent>jk <c-c>
vnoremap <silent>JK <c-c>
" discard input
inoremap <silent> JK <esc>u:echo "🤡 jk"<cr>
" hide highlighting
nnoremap <silent> <esc> :noh<CR>
nnoremap <silent> <bs> <esc>:noh<CR>

" Toggle line numbers
nnoremap <silent>\| :set rnu! nu!<cr>:echo "🔢 toggloggle"<cr>

" Snippets
" Jump to next snippet placeholder
" Snippet Jump USAGE-----------------{{{
" useful with snippets. For example:
" ```In javascript file
" [user]:       i
"               var<space>
" [vim]:        var varName = varValue;
"               <esc>^/var<cr>cw
" [user @ |]:   var | = varValue;
"               theAnswerJL
" [user @ |]:   var theAnswer = |;
"               42<esc>
" [result]:     var theAnswer = 42;
" ----------------------------------}}}
nnoremap JL ncw<esc>a
inoremap JL <esc>ncw<esc>a
" (effectively) clear the search
" so you don't accidentally jump to replace
" something after you're done with a snippet
" inoremap <localleader>\ /asdjfghkl<cr>:noh<cr>

" Working on project files
" Opening files outside of vim
" open current buffer in the system default
nnoremap <silent> <localleader>o :echo "🧬 Splicing mitochondrial DNA"<cr> :silent w<cr> :silent ! open %<CR>
" change the working directory to the open file's path
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
" Save current session in working directory
nnoremap <leader>ms :mksession!<cr>:echo "✅ Sesh cached"<cr>

" LISTING THINGS
"list buffers
nnoremap <silent><leader>lb :echo "💥 All your buffers are belong to us!"<cr>:ls<cr>
" list marks
nnoremap <silent><leader>lm :echo "🗺  I wish the world were flat, like the old days"<cr>:marks<cr>
" list registers
nnoremap <silent><leader>lr :echo "💰 I can ring you up over here."<cr>:reg<cr>
" list search history
nnoremap <silent> <leader>lh :echo "📜 Searching the archives."<cr>:history<cr>

" BUFFERS
"tab through buffers
nnoremap <leader><tab> :b<space>
" load next buffer
nnoremap <silent> <c-n> :bn<cr>:echo "➡️  Next!"<cr>
nnoremap <silent> <leader>n :bn<cr>:echo "➡️  Next!"<cr>
" load previous buffer
nnoremap <silent> <c-p> :bp<cr>:echo "⬅️  Back up!"<cr>
" hide the current buffer
noremap <silent> <leader>q :q<cr>:echo "👻 Quitted."<cr>
" delete current buffer
noremap <leader>x :bd<cr>:echo "🚮 baleted!"<cr>
" discard current buffer
noremap <leader><s-x> :bd!<cr>:echo "🚮 baleted!"<cr>
" rename the current buffer
nnoremap <leader><s-r> :f 
" set the filetype of the current buffer
nnoremap <leader><s-f> :set filetype=
" write all buffers
nnoremap <leader><s-w> :wa<cr>:echo "🧻 It is written!"<cr>


" WINDOWS
" Create new windows in each direction
nnoremap <silent> <leader><s-j> :split<cr><c-w>j:enew<cr>
nnoremap <silent> <leader><s-k> :split<cr>:enew<cr>
nnoremap <silent> <leader><s-l> :vsplit<cr><c-w>l:enew<cr>
nnoremap <silent> <leader><s-h> :vsplit<cr>:enew<cr>
" move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" hide other windows (only window)
nnoremap <leader>o <c-w>o
" vertical resize windows
nnoremap <S-UP> 2<C-W>+
nnoremap <S-DOWN> 2<C-W>-
" horizontal resize windows
nnoremap <S-RIGHT> 5<C-W>>
nnoremap <S-LEFT> 5<C-W><


" TABS
noremap <leader>tn :tabnew<cr>
noremap <leader>tl :tabnext<cr>
noremap <leader>th :tabprev<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tq :tabclose<cr>
noremap <leader>tm :tabmove 
cnoreabbrev t tab new


" MOVEMENTS
" move to end of line
noremap <s-l> $
" move to beginning of line
noremap <s-h> ^
" in parentheses
onoremap p i(
" in angle brackets
onoremap < i<
onoremap > i>
" in quotation marks
onoremap q i"


" LINE OPERATIONS
"move to the next visual line even on wrapped lines
nnoremap <down> gj
nnoremap <up> gk
" move the current line _up or -down {count} lines
nnoremap <silent> _  :<c-u>execute 'move -1-'. v:count1<cr>:echo "⬆️  Move on up."<cr>
nnoremap <silent> -  :<c-u>execute 'move +'. v:count1<cr>:echo "⬇️  Move down, move down."<cr>
" add blank line above '[' or below ']' cursor
nnoremap <silent> [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[:echo "🛰  I just need some space."<cr>
nnoremap <silent> ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>:echo "🛰  I just need some space."<cr>
" add line above and enter insert mode
inoremap <C-k> <esc>O
" Yank to the end of the line
nnoremap <s-y> y$


" WRAPPING WORDS
" Wrap current word in double quotes
nnoremap <leader>" viW<esc>a"<esc>Bi"<esc>lel
" Wrap current Word in single quotes
nnoremap <leader>' viW<esc>a'<esc>Bi'<esc>lel
" Wrap current Word in angle brackets
nnoremap <leader>< viW<esc>a><esc>Bi<<esc>lel
" wrap last visual selection in double quotes
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
" wrap last visual selection in single quotes
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
" wrap last visual selection in angle brackets
vnoremap <leader>< <esc>`<i<<esc>`>a><esc>

" }}} END mappings

" 'abbreviations ----------------------------{{{
"""""""""
" SPELLING autocorrect
inoreabbrev adn and
inoreabbrev waht what
inoreabbrev teh the
inoreabbrev tehn then
inoreabbrev slef self

"open help commands in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

" }}}

" 'helpers ------------------------------{{{

" vim helpers ----------------------- {{{
augroup vim_helpers
  autocmd!
  autocmd FileType vim :source ~/.vim/helpers/vim-helpers.vim
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" EDITING DOTFILES & HELPERS {{{
" _R_ opens .dotfiles directory in a new tab
noremap <silent> <localleader><s-r> :tabnew ~/.dotfiles<cr>:echo "📝 It's dot com!"<cr>
" _D_ opens .dotfiles directory in a new tab
nnoremap <silent><localleader><s-d> :vsplit ~/.dotfiles<cr><c-w><s-l>:echo "📝 It's dot com!"<cr>
" _Z_ opens .zshrc in a new tab 
noremap <silent> <localleader><s-z> :tabnew ~/.zshrc<cr>:echo "🐚 Let's do this zsh!"<cr>
" V is set as global mark for vimrc
" _V_ open vimrc in a new tab 
nnoremap <silent> <localleader><s-v> :tabnew ~/.vimrc<cr>:echo "🎹 Fine tuning"<cr>
" _E_ opens .vimrc next to the current file
nnoremap <silent> <localleader><s-e> :vsplit ~/.vimrc<cr><c-w><s-l>:echo "🎹 Fine tuning"<cr>
" _S_ source .vimrc, clear search highlights
nnoremap <silent> <localleader>s :source ~/.vimrc<cr> :noh<cr> :echo "👩 Now we're cooking!"<cr>
" _H_ opens helpers picker next to the current buffer
nnoremap <silent> <localleader><s-h> :vsplit ~/.vim/helpers<cr><c-w><s-l>:echo "🚨 Haalp...ers!"<cr>
"
" open key default key mappings
nnoremap <silent> <Leader>? :tab help index<CR>:echo "🔑 Where'd I put my keys?"<cr>
" }}} END dotfile editing

" }}}

" HTML helpers ----------------------- {{{
augroup html_helpers
  autocmd!
  " load abbreviations for snippets, &c
  autocmd FileType html :source ~/.vim/helpers/html-helpers.vim
  autocmd FileType html setlocal foldmethod=indent
augroup END
" }}}

" CSS helpers ------------------------------ {{{
augroup  css_helpers
  autocmd!
  " load abbreviations for snippets, &c
  autocmd FileType css :source ~/.vim/helpers/css-helpers.vim
  " load the project index
  autocmd FileType css nnoremap <silent> <buffer> <localleader>o :silent w<cr> :silent ! open index.html<CR>:echo "👀 Let's see this."<cr>
  autocmd FileType css setlocal foldmethod=marker
augroup END
" END CSS helpers }}}

" JavaScript helpers ----------------------- {{{
augroup javascript_helpers
  autocmd!
  " load abbreviations for snippets, &c
  autocmd FileType javascript :source ~/.vim/helpers/javascript-helpers.vim
  " load the project index
  autocmd FileType javascript nnoremap <silent> <buffer> <localleader>o :silent w<cr> :silent ! open index.html<CR>:echo "👀 Let's see this."<cr>
  autocmd FileType javascript setlocal foldmethod=indent
augroup END
" }}} END JavaScript helpers

" Markdown helpers ----------------------- {{{
augroup markdown_helpers
  autocmd!
  " load abbreviations for snippets, &c
  autocmd FileType markdown :source ~/.vim/helpers/markdown-helpers.vim
  autocmd FileType markdown setlocal foldmethod=marker
augroup END
" }}} END Markdown helpers

" git helpers ----------------------- {{{
cnoreabbrev gs ! git status
" }}} END git helpers

" PERSONAL helpers -----------------------------{{{
augroup personal_helpers
  autocmd!
  autocmd BufRead * :source ~/.vim/helpers/personal.vim
augroup END
" END personal }}}


" END helpers }}}

" 'temporary ----------------------- {{{
" use 'em for a while, then put them where they go, or delete them

" Change current word to uppercase
inoremap <c-u> <esc>viwUi
nnoremap <leader><c-u> viwU
" Change current word to lowercase
inoremap <c-l> <esc>viwui
nnoremap <leader><c-l> viwu
" nnoremap G Go

" }}}
