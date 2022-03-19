" JAVA_SNIPPETS

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
inoreabbrev <buffer> if if (ifCondition ) {<cr>ifBody<cr>}<esc>0kk^/if<cr>:noh<cr>cw
inoreabbrev <buffer> elif else if (ifCondition ) {<cr>ifBody<cr>}<esc>0kk^/if<cr>n:noh<cr>cw
inoreabbrev <buffer> else else {<cr>}<esc>O

" inoreabbrev <buffer> ifel if (ifCondition) {<cr>ifBody<cr>}<esc>0kk^/if<cr>:noh<cr>cw

"Ternary
inoreabbrev <buffer> t? ternaryCondition ? ternaryIf : ternaryElse<esc>7b/ternary<cr>cw
inoreabbrev <buffer> i? ternaryCondition ? ternaryIf : ternaryElse<esc>7b/ternary<cr>cw
inoreabbrev <buffer> iff ternaryCondition ? ternaryIf : ternaryElse;<esc>7b/ternary<cr>cw

" CLASSES
inoreabbrev <buffer> class classclassName extends classSuper {<cr>classBody<cr>}<esc>2k/class<cr>cw

"LOOPS
inoreabbrev <buffer> for for (forConditions ) {<cr>forBody<cr>}<esc>5b/for<cr>cw
inoreabbrev <buffer> fori for ( let i = 0; forCondition; i++ ) {<cr>forBody<cr>}<esc>8b/for<cr>cw

" OBJECTS
" new object
inoreabbrev <buffer> new new objName(objArgs)<esc>2B/obj<cr>:noh<cr>cw<bs>

" JSON object
inoreabbrev <buffer> jo var objName = {<cr>objKey: objVal,<cr>};<esc>0kk^/obj<cr>:noh<cr>cw

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
inoreabbrev <buffer> ifn (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw
inoreabbrev <buffer> ifun (function(functionArgs) {<cr>functionBody<cr>})(functionArgs);<esc>0kk^/function<cr>n:noh<cr>cw

inoreabbrev <buffer> re return result;<esc>0/result<cr>:noh<cr>cw<bs>


