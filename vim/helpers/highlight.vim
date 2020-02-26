

SpecialKey     xxx ctermfg=81 guifg=Cyan
EndOfBuffer    xxx links to NonText
TermCursor     xxx cterm=reverse gui=reverse
TermCursorNC   xxx cleared
NonText        xxx ctermfg=12 gui=bold guifg=Blue
Directory      xxx ctermfg=159 guifg=Cyan
ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=White guibg=Red
IncSearch      xxx cterm=reverse gui=reverse
Search         xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
MoreMsg        xxx ctermfg=121 gui=bold guifg=SeaGreen
ModeMsg        xxx cterm=bold gui=bold
LineNr         xxx ctermfg=11 guifg=Yellow
CursorLineNr   xxx ctermfg=11 gui=bold guifg=Yellow
Question       xxx ctermfg=121 gui=bold guifg=Green
StatusLine     xxx cterm=bold,reverse gui=bold,reverse
StatusLineNC   xxx cterm=reverse gui=reverse
VertSplit      xxx cterm=reverse gui=reverse
Title          xxx ctermfg=225 gui=bold guifg=Magenta
Visual         xxx ctermbg=242 guibg=DarkGrey
VisualNC       xxx cleared
WarningMsg     xxx ctermfg=224 guifg=Red
WildMenu       xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
Folded         xxx cterm=italic ctermfg=14 ctermbg=256 guifg=Cyan guibg=DarkGrey
FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
DiffAdd        xxx ctermbg=4 guibg=DarkBlue
DiffChange     xxx ctermbg=5 guibg=DarkMagenta
DiffDelete     xxx ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
DiffText       xxx cterm=bold ctermbg=9 gui=bold guibg=Red
SignColumn     xxx ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
Conceal        xxx ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
SpellBad       xxx ctermbg=9 gui=undercurl guisp=Red
SpellCap       xxx ctermbg=12 gui=undercurl guisp=Blue
SpellRare      xxx ctermbg=13 gui=undercurl guisp=Magenta
SpellLocal     xxx ctermbg=14 gui=undercurl guisp=Cyan
Pmenu          xxx ctermfg=0 ctermbg=13 guibg=Magenta
PmenuSel       xxx ctermfg=242 ctermbg=0 guibg=DarkGrey
PmenuSbar      xxx ctermbg=248 guibg=Grey
PmenuThumb     xxx ctermbg=15 guibg=White
TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
TabLineSel     xxx cterm=bold gui=bold
TabLineFill    xxx cterm=reverse gui=reverse
CursorColumn   xxx ctermbg=242 guibg=Grey40
CursorLine     xxx cterm=bold guibg=Grey40
ColorColumn    xxx ctermbg=1 guibg=DarkRed
QuickFixLine   xxx links to Search
Whitespace     xxx links to NonText
NormalNC       xxx cleared
MsgSeparator   xxx links to StatusLine
NormalFloat    xxx links to Pmenu
MsgArea        xxx cleared
RedrawDebugNormal xxx cterm=reverse gui=reverse
RedrawDebugClear xxx ctermbg=11 guibg=Yellow
RedrawDebugComposed xxx ctermbg=10 guibg=Green
RedrawDebugRecompose xxx ctermbg=9 guibg=Red
Cursor         xxx guifg=bg guibg=fg
lCursor        xxx guifg=bg guibg=fg
Substitute     xxx links to Search
MatchParen     xxx ctermbg=6 guibg=DarkCyan
Normal         xxx cleared
NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
NvimAssignment xxx links to Operator
Operator       xxx links to Statement
NvimPlainAssignment xxx links to NvimAssignment
NvimAugmentedAssignment xxx links to NvimAssignment
NvimAssignmentWithAddition xxx links to NvimAugmentedAssignment
NvimAssignmentWithSubtraction xxx links to NvimAugmentedAssignment
NvimAssignmentWithConcatenation xxx links to NvimAugmentedAssignment
NvimOperator   xxx links to Operator
NvimUnaryOperator xxx links to NvimOperator
NvimUnaryPlus  xxx links to NvimUnaryOperator
NvimUnaryMinus xxx links to NvimUnaryOperator
NvimNot        xxx links to NvimUnaryOperator
NvimBinaryOperator xxx links to NvimOperator
NvimComparison xxx links to NvimBinaryOperator
NvimComparisonModifier xxx links to NvimComparison
NvimBinaryPlus xxx links to NvimBinaryOperator
NvimBinaryMinus xxx links to NvimBinaryOperator
NvimConcat     xxx links to NvimBinaryOperator
NvimConcatOrSubscript xxx links to NvimConcat
NvimOr         xxx links to NvimBinaryOperator
NvimAnd        xxx links to NvimBinaryOperator
NvimMultiplication xxx links to NvimBinaryOperator
NvimDivision   xxx links to NvimBinaryOperator
NvimMod        xxx links to NvimBinaryOperator
NvimTernary    xxx links to NvimOperator
NvimTernaryColon xxx links to NvimTernary
NvimParenthesis xxx links to Delimiter
Delimiter      xxx links to Special
NvimLambda     xxx links to NvimParenthesis
NvimNestingParenthesis xxx links to NvimParenthesis
NvimCallingParenthesis xxx links to NvimParenthesis
NvimSubscript  xxx links to NvimParenthesis
NvimSubscriptBracket xxx links to NvimSubscript
NvimSubscriptColon xxx links to NvimSubscript
NvimCurly      xxx links to NvimSubscript
NvimContainer  xxx links to NvimParenthesis
NvimDict       xxx links to NvimContainer
NvimList       xxx links to NvimContainer
NvimIdentifier xxx links to Identifier
Identifier     xxx cterm=bold ctermfg=14 guifg=#40ffff
NvimIdentifierScope xxx links to NvimIdentifier
NvimIdentifierScopeDelimiter xxx links to NvimIdentifier
NvimIdentifierName xxx links to NvimIdentifier
NvimIdentifierKey xxx links to NvimIdentifier
NvimColon      xxx links to Delimiter
NvimComma      xxx links to Delimiter
NvimArrow      xxx links to Delimiter
NvimRegister   xxx links to SpecialChar
SpecialChar    xxx links to Special
NvimNumber     xxx links to Number
Number         xxx links to Constant
NvimFloat      xxx links to NvimNumber
NvimNumberPrefix xxx links to Type
Type           xxx ctermfg=121 gui=bold guifg=#60ff60
NvimOptionSigil xxx links to Type
NvimOptionName xxx links to NvimIdentifier
NvimOptionScope xxx links to NvimIdentifierScope
NvimOptionScopeDelimiter xxx links to NvimIdentifierScopeDelimiter
NvimEnvironmentSigil xxx links to NvimOptionSigil
NvimEnvironmentName xxx links to NvimIdentifier
NvimString     xxx links to String
String         xxx links to Constant
NvimStringBody xxx links to NvimString
NvimStringQuote xxx links to NvimString
NvimStringSpecial xxx links to SpecialChar
NvimSingleQuote xxx links to NvimStringQuote
links to NvimStringBody
