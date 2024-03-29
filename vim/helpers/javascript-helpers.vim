" JAVASCRIPT_SNIPPETS

inoreabbrev <buffer> cl console.log( );<esc>2hi

inoreabbrev <buffer> im import imTemp from 'imTemp';<esc>^/imTemp<cr>cw
inoreabbrev <buffer> ex export default;<esc>i

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
inoremap <buffer> ;; <esc>:execute "normal! mqA;\e`q"<cr>a
inoremap <buffer> ,, <esc>:execute "normal! mqA,\e`q"<cr>a

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
inoreabbrev <buffer> kv propKey: propValue,<esc>0/prop<cr>:noh<cr>cw

" JSON values
inoreabbrev <buffer> jv "propKey": "propValue",<esc>23h/prop<cr>:noh<cr>cw

"JSON method
inoreabbrev <buffer> jm methodKey: function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cr>cw<bs><space>
inoreabbrev <buffer> mej methodKey: function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cr>cw<bs><space>

" FUNCTIONS
" named functions
inoreabbrev <buffer> fn function functionName(functionArgs) {<cr>functionBody<cr>}<esc>0kk^/function<cr>:noh<cr>cw<bs>
inoreabbrev <buffer> fun function functionName(functionArgs) {<cr>functionBody<cr>}<esc>0kk^/function<cr>:noh<cr>cw<bs>

" arrow functions
inoreabbrev <buffer> afn () => {AFN}<esc>F(/AFN<cr>cw
inoreabbrev <buffer> caf constCAF = (CAF) => {CAF};<esc>^/CAF<cr>cw

" anonymous functions
inoreabbrev <buffer> anfn function(functionArgs) {<cr>functionBody<cr>};<esc>0kk^/function<cr>:noh<cr>cw
inoreabbrev <buffer> anfun function(functionArgs) {<cr>functionBody<cr>};<esc>0kk^/function<cr>:noh<cr>cw

" immedieately invoked functional expressions
inoreabbrev <buffer> imfn (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw
inoreabbrev <buffer> imfun (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw

" return
inoreabbrev <buffer> re return;<esc>$i

" p5 initialization
inoremap <buffer> p5in function setup() {<cr>createCanvas(windowWidth, windowHeight);<cr>background(240);<cr>}<cr><cr>function draw() {<cr>// Whatcha gonna do?<cr><bs><bs><bs>}<esc>gg

inoremap <buffer> push push();<cr>pop();<esc>O
