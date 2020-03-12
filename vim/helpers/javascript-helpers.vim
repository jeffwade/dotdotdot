" JAVASCRIPT_SNIPPETS

inoreabbrev <buffer> cl console.log();<esc>hi

" Operators
" in variable assignment
onoremap <buffer> i; :<c-u>execute "normal! /;\r:nohlsearch\rT=vt;"<cr><space>
" in comment
"
" around comment
"

" VARIABLES
" regular var
inoreabbrev <buffer> var var varName = varValue;<esc>^/var<cr>:noh<cr>cw<bs>
inoreabbrev <buffer> va var varName = varValue;<esc>^/var<cr>:noh<cr>cw<bs>
" constant
inoreabbrev <buffer> const const constName = constValue;<esc>^/const<cr>:noh<cr>cw<bs>
" let (block scope variable)
inoreabbrev <buffer> let let letName = letValue;<esc>^/let<cr>:noh<cr>cw<bs>
" array
inoreabbrev <buffer> array [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw
inoreabbrev <buffer> ar [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw
inoreabbrev <buffer> arr [arrayVal1, arrayVal2 ]<esc>F[/array<cr>:noh<cr>cw

" CONDITIONALS
inoreabbrev <buffer> if if (ifCondition) {<cr>ifBody<cr>}<esc>0kk^/if<cr>:noh<cr>cw
inoreabbrev <buffer> elif else if (ifCondition) {<cr>ifBody<cr>}<esc>0kk^/if<cr>n:noh<cr>cw
inoreabbrev <buffer> else else {<cr>}<esc>O

"LOOPS

" OBJECTS
inoreabbrev <buffer> th this

" object constructor
inoreabbrev <buffer> ob function objName(objArgs) {<cr>objBody<cr>}<esc>0kk^/obj<cr>:noh<cr>cw<bs>

" object method
inoreabbrev <buffer> om this.methodName = function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cw>cw<bs><space>
inoreabbrev <buffer> me this.methodName = function(methodArgs) {<cr>methodBody<cr>},<esc>0kk/method<cr>:noh<cr>cw<bs><space>

" object value
inoreabbrev <buffer> ov this.objVal = objArg;<esc>0/obj<cr>:noh<cr>cw
inoreabbrev <buffer> vl this.objVal = objArg;<esc>^/obj<cr>:noh<cr>Ncw<bs><space>

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
