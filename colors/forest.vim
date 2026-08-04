" ========================================================================
" Theme: master.vim (The Definitive All-Inclusive Golden Blueprint)
" Description: Clean, standalone theme with full-spectrum token separation.
" ========================================================================

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "forest"
set background=dark

" ========================================================================
" SECTION 1: MAIN EDITOR WINDOW & TEXT LAYERS
" ========================================================================

" Normal: Your main document background layer and your core prose font color
highlight Normal         guifg=#dadbda guibg=#1a1a1a gui=none
" highlight Normal         guifg=#d2dccd guibg=#1a1a1a gui=none

" NonText: Invisible layout helpers like hidden tab lines or carriage markers
highlight NonText        guifg=#4e4e4e guibg=NONE    gui=none

" EndOfBuffer: The empty tilde (~) rows that fill the window below your document text
highlight EndOfBuffer    guifg=#4e4e4e guibg=NONE    gui=none


" ========================================================================
" SECTION 2: GLOBAL PUNCTUATION & MATRIX DIVIDERS (FULLY DECOUPLED)
" ========================================================================

" Operator: Targets mathematical and assignment signs: + - * / = < >
highlight Operator       guifg=#6aa5ea guibg=NONE    gui=none

" Delimiter: Targets standard grouping wrappers: ( ) [ ] { } and commas , .
highlight Delimiter      guifg=#aad13e guibg=NONE    gui=none


" ========================================================================
" SECTION 3: STANDARD MASTER SYNTAX FAMILIES (ALL PARENTS & CHILDREN)
" ========================================================================

" --- COMMENT FAMILY ---
" Comment: Targets your main comment text sentences (Your warm autumn-gold straw)
highlight Comment         guifg=#aeb5ae guibg=NONE    gui=none
" SpecialComment: Targets ONLY your starting hash symbol characters (# or #+)
highlight SpecialComment  guifg=#8c7fa0 guibg=NONE    gui=none

" --- TODO FAMILY ---
" Todo: Solid, high-visibility campfire tracking blocks for open tasks
highlight Todo            guifg=#c2c29e guibg=#3b3c2d gui=bold

" --- IDENTIFIER FAMILY ---
" Identifier: RESTORED: Targets your custom inner-parentheses payload text ()
highlight Identifier      guifg=#90ab93 guibg=NONE    gui=none
" Function: RESTORED: Targets your custom inner-double-quotes text ""
highlight Function        guifg=#b0b88d guibg=NONE    gui=none

" --- STATEMENT FAMILY ---
" Statement: Standard universal parent for active program execution instructions
highlight Statement       guifg=#82a182 guibg=NONE    gui=bold
" Conditional: Targets decision structures like if, else, switch, ternary markers
highlight Conditional     guifg=#82a182 guibg=NONE    gui=bold
" Repeat: Targets counting loops like while, for, loop, do-while chains
highlight Repeat          guifg=#82a182 guibg=NONE    gui=none
" Label: Targets specific anchor jump points like case:, default:, or start: labels
highlight Label           guifg=#82a182 guibg=NONE    gui=none
" Keyword: Targets language-reserved words that initialize internal variables
highlight Keyword         guifg=#82a182 guibg=NONE    gui=bold
" Exception: Targets failure recovery statements like try, catch, throw, finally
highlight Exception       guifg=#82a182 guibg=NONE    gui=bold

" --- PREPROC FAMILY ---
" PreProc: Standard universal parent for compiler directive macros and headers
highlight PreProc         guifg=#7bb0aa guibg=NONE    gui=none
" Include: Targets file integration statements like include, import, require
highlight Include         guifg=#8cb0c4 guibg=NONE    gui=none
" Define: Targets compiler variable declarations like define, macro definitions
highlight Define          guifg=#8cb0c4 guibg=NONE    gui=none
" Macro: Targets dynamic runtime macro structures and token substitution rules
highlight Macro           guifg=#8cb0c4 guibg=NONE    gui=none
" PreCondit: Targets precompiler logic checks like #if, #ifdef, #ifndef
highlight PreCondit       guifg=#8cb0c4 guibg=NONE    gui=bold

" --- TYPE FAMILY ---
" Type: Standard universal parent for base classes and data signatures
highlight Type            guifg=#87875f guibg=NONE    gui=none
" StorageClass: Targets memory scope modifiers like static, volatile, register, const
highlight StorageClass    guifg=#a3af92 guibg=NONE    gui=none
" Structure: Targets compound variable structures like struct, class, union, enum
highlight Structure       guifg=#a3af92 guibg=NONE    gui=none
" Typedef: Targets custom user typealias definitions that rename base primitives
highlight Typedef         guifg=#a3af92 guibg=NONE    gui=bold

" --- CONSTANT FAMILY ---
" Constant: Standard universal parent for static literal values
highlight Constant        guifg=#ed4300 guibg=NONE    gui=none
" String: Targets standard string syntax link configurations
highlight String          guifg=#cfb58a guibg=NONE    gui=none
" StringDelimiter: Targets the literal opening/closing quote characters themselves (" ")
highlight StringDelimiter guifg=#c47656 guibg=NONE    gui=none
" Character: Targets single-quoted isolated alphanumeric characters like 'c', '7'
highlight Character       guifg=#b09d71    guibg=NONE    gui=none
" Number: Targets standard absolute digit fields (0-9) used in variables
highlight Number          guifg=#c5735e guibg=NONE    gui=none
" Boolean: Targets logical state validation words like true, false, yes, no
highlight Boolean         guifg=#d48261 guibg=NONE    gui=none
" Float: Targets specific floating-point decimal point numbers like 0.25, 3.1415
highlight Float           guifg=#d48261 guibg=NONE    gui=none

" --- SPECIAL FAMILY ---
" Special: Standard universal parent for escape lines, delimiters, and boundary codes
highlight Special         guifg=#7aad96 guibg=NONE    gui=none
" SpecialChar: Targets literal backslash escape strings (\n, \t) typed inside quotes
highlight SpecialChar     guifg=#5f8787 guibg=NONE    gui=bold
" Tag: Targets markup language enclosure boundaries like HTML/XML tags
highlight Tag             guifg=#5f8787 guibg=NONE    gui=bold
" Debug: Targets troubleshooting markers, print boundaries, or breakpoint flags
highlight Debug           guifg=#d48261 guibg=NONE    gui=bold

" --- UNDERLINED FAMILY ---
" Underlined: Standard universal parent for network text, links, and text underlines
highlight Underlined      guifg=#8da3bc guibg=NONE    gui=underline


" ========================================================================
" SECTION 4: BASIC EDITOR INTERFACE & CURSOR LAYERS
" ========================================================================

" Cursor: The physical color of your block cursor and the character underneath it
highlight Cursor         guifg=#1a1a1a guibg=#bcbcbc gui=none

" CursorLine: The soft horizontal background bar tracking your active cursor row
highlight CursorLine     guifg=NONE    guibg=#262626 gui=none
highlight CursorColumn   guifg=NONE    guibg=#262626 gui=none

" LineNr: The standard numbers sitting inside your left editor margin
highlight LineNr         guifg=#444444 guibg=NONE    gui=none

" CursorLineNr: The active line number directly next to your cursor row
highlight CursorLineNr   guifg=#a2c815 guibg=#262626 gui=none

" Visual: The background selection highlight when grabbing chunks of text
highlight Visual         guifg=#1a1a1a guibg=#8fafd7 gui=none

" Search: The background glow when hunting down terms with the '/' command
highlight Search         guifg=#1a1a1a guibg=#ffffaf gui=none
highlight IncSearch      guifg=#1a1a1a guibg=#af5f5f gui=none

" MatchParen: The temporary alert highlight when your cursor steps on a matching bracket
highlight MatchParen     guifg=#ffffaf guibg=#444444 gui=bold

" WinSeparator: The thin vertical dividing borders splitting your window viewports
highlight VertSplit      guifg=#444444 guibg=#444444 gui=none
highlight WinSeparator   guifg=#444444 guibg=NONE    gui=none

" Pop-up Menus & Floating Prompt Windows
highlight Pmenu          guifg=#dbdbdb guibg=#262626 gui=none
highlight PmenuSel       guifg=#1a1a1a guibg=#82a182 gui=none
highlight PmenuSbar      guifg=NONE    guibg=#444444 gui=none
highlight PmenuThumb     guifg=NONE    guibg=#82a182 gui=none
highlight NormalFloat    guifg=#d1dccc guibg=#262626 gui=none
highlight FloatBorder    guifg=#444444 guibg=#262626 gui=none

" Command Line Notifications & Alert Messages
highlight ErrorMsg       guifg=#c2a79e guibg=#522828 gui=bold
highlight WarningMsg     guifg=#af5f5f guibg=NONE    gui=none
highlight ModeMsg        guifg=#1a1a1a guibg=#87af87 gui=none
highlight MoreMsg        guifg=#82a182 guibg=NONE    gui=bold
highlight Question       guifg=#87af87 guibg=NONE    gui=bold


" ========================================================================
" SECTION 5: GIT DIFF LAYERS (VIMDIFF TRACKING MATRIX)
" ========================================================================
highlight diffAdd        guifg=#87af87 guibg=#1a1a1a gui=reverse
highlight diffDelete     guifg=#af5f5f guibg=#1a1a1a gui=reverse
highlight diffChange     guifg=#8787af guibg=#1a1a1a gui=reverse
highlight diffText       guifg=#ff8700 guibg=#1a1a1a gui=reverse
