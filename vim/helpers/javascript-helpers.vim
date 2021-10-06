" JAVASCRIPT_SNIPPETS

inoreabbrev <buffer> cl console.log( );<esc>2hi

" Operators
" in variable assignment
onoremap <buffer> i; :<c-u>execute "normal! /;\r:nohlsearch\rT=vt;"<cr><space>
" in comment
"
" around comment
"

" create surrounds (with tpope/vim-surround so remapping is necessary)
imap cs <c-s>
imap CS <c-g>S

" VARIABLES
" regular var
inoreabbrev <buffer> var var varName = varValue;<esc>4b/var<cr>:noh<cr>cw<bs>
inoreabbrev <buffer> va var varName = varValue;<esc>4b/var<cr>:noh<cr>cw<bs>
" constant
inoreabbrev <buffer> const const constName = constValue;<esc>4b/const<cr>:noh<cr>cw<bs>
" let (block scope variable)
inoreabbrev <buffer> let let letName = letValue;<esc>4b/let<cr>:noh<cr>cw<bs>
" array
inoreabbrev <buffer> array [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw
inoreabbrev <buffer> ar [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw
inoreabbrev <buffer> arr [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw

" CONDITIONALS
inoreabbrev <buffer> iif if (ifCondition ) {<cr>ifBody<cr>}<esc>0kk^/if<cr>:noh<cr>cw
inoreabbrev <buffer> elif else if (ifCondition ) {<cr>ifBody<cr>}<esc>0kk^/if<cr>n:noh<cr>cw
inoreabbrev <buffer> else else {<cr>}<esc>O

" inoreabbrev <buffer> ifel if (ifCondition) {<cr>ifBody<cr>}<esc>0kk^/if<cr>:noh<cr>cw

"Ternary
inoreabbrev <buffer> t? ternaryCondition ? ternaryIf : ternaryElse<esc>7b/ternary<cr>cw
inoreabbrev <buffer> i? ternaryCondition ? ternaryIf : ternaryElse<esc>7b/ternary<cr>cw
inoreabbrev <buffer> iff ternaryCondition ? ternaryIf : ternaryElse;<esc>7b/ternary<cr>cw

" BLOCKS
inoremap <buffer> ( ()<esc>i
inoremap <buffer> { {}<esc>i
inoremap <buffer> [ []<esc>i
inoremap <buffer> ; <esc><s-a>;

" Quotes
inoremap <buffer> ' ''<esc>i
inoremap <buffer> " ""<esc>i
inoremap <buffer> ` ``<esc>i
" Assignment
" inoremap <buffer> = = ;<esc>i
" Comparisons

" CLASSES
inoreabbrev <buffer> cclass classclassName {<cr>classBody<cr>}<esc>2k/class<cr>cw
inoreabbrev <buffer> ext extends

" REACT
inoreabbrev <buffer> rclass classClassName extends React.Component {<cr>constructor(props) {<cr>super(props);<cr>classConstructor;<cr>}<cr><cr>render() {<cr>return classRender;<cr>}<cr>}<esc>9k/class<cr>cw
inoreabbrev <buffer> rfn functionfnName(props) {<cr>fnCalcs<cr>return (<cr>fnReturn<cr>);<cr>}<esc>5k/fn<cr>cw



"LOOPS
inoreabbrev <buffer> ffor for (forConditions ) {<cr>forBody<cr>}<esc>5b/for<cr>cw
inoreabbrev <buffer> fori for ( let i = 0; forCondition; i++ ) {<cr>forBody<cr>}<esc>8b/for<cr>cw
inoreabbrev <buffer> forj for ( let j = 0; forCondition; j++ ) {<cr>forBody<cr>}<esc>8b/for<cr>cw

" OBJECTS
" new object
inoreabbrev <buffer> nnew new objName(objArgs)<esc>2B/obj<cr>:noh<cr>cw<bs>

" JSON object
inoreabbrev <buffer> jo var objName = {<cr>objKey: objVal,<cr>};<esc>0kk^/obj<cr>:noh<cr>cw

" Key-value pairs
inoreabbrev <buffer> kv propKey: propValue,<esc>18h/prop<cr>:noh<cr>Ncw<bs><space>

" JSON values
inoreabbrev <buffer> jv propKey: propValue,<esc>^/prop<cr>:noh<cr>Ncw<bs><space>

"JSON method
inoreabbrev <buffer> jm methodKey: function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cr>cw<bs><space>
inoreabbrev <buffer> mej methodKey: function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cr>cw<bs><space>

" FUNCTIONS
" named functions
inoreabbrev <buffer> fn function functionName(functionArgs) {<cr>functionBody<cr>}<esc>0kk^/function<cr>:noh<cr>cw<bs>
inoreabbrev <buffer> fun function functionName(functionArgs) {<cr>functionBody<cr>}<esc>0kk^/function<cr>:noh<cr>cw<bs>

" anonymous functions
inoreabbrev <buffer> afn function(functionArgs) {<cr>functionBody<cr>};<esc>0kk^/function<cr>:noh<cr>cw
inoreabbrev <buffer> afun function(functionArgs) {<cr>functionBody<cr>};<esc>0kk^/function<cr>:noh<cr>cw

" immedieately invoked functional expressions
inoreabbrev <buffer> imfn (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw
inoreabbrev <buffer> imfun (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw

" return
inoreabbrev <buffer> re return;<esc>$i

" p5 initialization
inoremap <buffer> p5in function setup() {<cr>createCanvas(windowWidth, windowHeight);<cr>background(240);<cr>}<cr><cr>function draw() {<cr>// Whatcha gonna do?<cr><bs><bs><bs>}<esc>gg


