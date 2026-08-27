" ========================================================================
" Theme: rain_pure.vim (Sun-Dappled Flower Garden Edition)
" Description: Clean, standalone theme with radiant sunlit token separation.
" ========================================================================

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "garden"
set background=dark

" ========================================================================
" SECTION 1: MAIN EDITOR WINDOW & TEXT LAYERS
" ========================================================================

" Normal: Your main document background layer and your core prose font color
highlight Normal         guifg=#d1dccc guibg=#191c21 gui=none

" NonText: Invisible layout helpers like hidden tab lines or carriage markers
highlight NonText        guifg=#51617d guibg=NONE    gui=none

" EndOfBuffer: The empty tilde (~) rows that fill the window below your document text
highlight EndOfBuffer    guifg=#51617d guibg=NONE    gui=none


" ========================================================================
" SECTION 2: GLOBAL PUNCTUATION & MATRIX DIVIDERS (SHINED UP: Forsythia Yellow)
" ========================================================================

" Operator: RADIANT: Targets mathematical signs: + - * / = < >
highlight Operator       guifg=#cca029 guibg=NONE    gui=none

" Delimiter: RADIANT: Targets standard grouping wrappers: ( ) [ ] { } and commas , .
highlight Delimiter      guifg=#e5c07b guibg=NONE    gui=none


" ========================================================================
" SECTION 3: STANDARD MASTER SYNTAX FAMILIES (ALL PARENTS & CHILDREN)
" ========================================================================

" --- COMMENT FAMILY ---
" Comment: Targets your main comment text sentences (Damp Fern Moss Green)
highlight Comment         guifg=#98a297 guibg=NONE    gui=none
" SpecialComment: SHINED UP: Targets starting hash symbols (# or #+) in brilliant Morning Orchid
highlight SpecialComment  guifg=#41877f guibg=NONE    gui=none

" --- TODO FAMILY ---
" Todo: Solid campfire block: Beautiful Cottage Foxglove Pink on a Plum Shadow background block
highlight Todo            guifg=#9947af guibg=#272426 gui=bold

" --- IDENTIFIER FAMILY ---
" Identifier: Targets plain variable names (and your custom inner-parentheses payload text)
highlight Identifier      guifg=#6f9d65 guibg=NONE    gui=none
" Function: Targets action or system routing command routine names (Primrose Petal Gold)
highlight Function        guifg=#967ebf guibg=NONE    gui=none

" --- STATEMENT FAMILY ---
" Statement: Standard universal parent for active program execution instructions (Horizon Blue)
highlight Statement       guifg=#6d95cc guibg=NONE    gui=bold
" Conditional: Targets decision structures like if, else, switch, ternary markers
highlight Conditional     guifg=#6d95cc guibg=NONE    gui=bold
" Repeat: Targets counting loops like while, for, loop, do-while chains
highlight Repeat          guifg=#6d95cc guibg=NONE    gui=none
" Label: Targets specific anchor jump points like case:, default:, or start: labels
highlight Label           guifg=#6d95cc guibg=NONE    gui=none
" Keyword: Targets language-reserved words that initialize internal variables
highlight Keyword         guifg=#6d95cc guibg=NONE    gui=bold
" Exception: Targets failure recovery statements like try, catch, throw, finally
highlight Exception       guifg=#6d95cc guibg=NONE    gui=bold

" --- PREPROC FAMILY ---
" PreProc: Standard universal parent for compiler directive macros and headers (Sage Green)
highlight PreProc         guifg=#73a794 guibg=NONE    gui=none
" Include: Targets file integration statements like include, import, require
highlight Include         guifg=#6d95cc guibg=NONE    gui=none
" Define: Targets compiler variable declarations like define, macro definitions
highlight Define          guifg=#6d95cc guibg=NONE    gui=none
" Macro: Targets dynamic runtime macro structures and token substitution rules
highlight Macro           guifg=#6d95cc guibg=NONE    gui=none
" PreCondit: Targets precompiler logic checks like #if, #ifdef, #ifndef
highlight PreCondit       guifg=#6d95cc guibg=NONE    gui=bold

" --- TYPE FAMILY ---
" Type: Standard universal parent for base classes and data signatures (Terracotta)
highlight Type            guifg=#ba7e61 guibg=NONE    gui=none
" StorageClass: Targets memory scope modifiers like static, volatile, register, const
highlight StorageClass    guifg=#6d95cc guibg=NONE    gui=none
" Structure: Targets compound variable structures like struct, class, union, enum
highlight Structure       guifg=#6d95cc guibg=NONE    gui=none
" Typedef: Targets custom user typealias definitions that rename base primitives
highlight Typedef         guifg=#6d95cc guibg=NONE    gui=bold

" --- CONSTANT FAMILY ---
" Constant: Standard universal parent for static literal values (Burgundy Rose)
highlight Constant        guifg=#bf6b85 guibg=NONE    gui=none
" String: Targets literal data text enclosed cleanly inside quotation marks (Sage Green)
highlight String          guifg=#709d6c guibg=NONE    gui=none
" StringDelimiter: Targets the literal opening/closing quote characters themselves (" ")
highlight StringDelimiter guifg=#e5c07b guibg=NONE    gui=none
" Character: Targets single-quoted isolated alphanumeric characters like 'c', '7'
highlight Character       guifg=#709d6c guibg=NONE    gui=none
" Number: Targets standard absolute digit fields (0-9) used in variables
highlight Number          guifg=#bf6b85 guibg=NONE    gui=none
" Boolean: Targets logical state validation words like true, false, yes, no
highlight Boolean         guifg=#bf6b85 guibg=NONE    gui=none
" Float: Targets specific floating-point decimal point numbers like 0.25, 3.1415
highlight Float           guifg=#bf6b85 guibg=NONE    gui=none

" --- SPECIAL FAMILY ---
" Special: Standard universal parent for escape lines, delimiters, and boundary codes
highlight Special         guifg=#5fa672 guibg=NONE    gui=none
" SpecialChar: Targets literal backslash escape strings (\n, \t) typed inside quotes
highlight SpecialChar     guifg=#709d6c guibg=NONE    gui=bold
" Tag: Targets markup language enclosure boundaries like HTML/XML tags
highlight Tag             guifg=#967ebf guibg=NONE    gui=bold
" Debug: Targets troubleshooting markers, print boundaries, or breakpoint flags
highlight Debug           guifg=#ba7e61 guibg=NONE    gui=bold

" --- UNDERLINED FAMILY ---
" Underlined: Targets hyperlinks, web links, and raw URLs
highlight Underlined      guifg=#6d95cc guibg=NONE    gui=underline


" ========================================================================
" SECTION 4: BASIC EDITOR INTERFACE & CURSOR LAYERS
" ========================================================================

" Cursor: The physical color of your block cursor and the character underneath it
highlight Cursor         guifg=#191c21 guibg=#9aa7bd gui=none

" CursorLine: The soft horizontal background bar tracking your active cursor row
highlight CursorLine     guifg=NONE    guibg=#232936 gui=none
highlight CursorColumn   guifg=NONE    guibg=#232936 gui=none

" LineNr: The standard numbers sitting inside your left editor margin
highlight LineNr         guifg=#323c4d guibg=NONE    gui=none

" CursorLineNr: The active line number directly next to your cursor row
highlight CursorLineNr   guifg=#e5c07b guibg=#232936 gui=none

" Visual: The background selection highlight when grabbing chunks of text
highlight Visual         guifg=NONE    guibg=#323c4d gui=none

" Search: The background glow when hunting down terms with the '/' command
highlight Search         guifg=#191c21 guibg=#e5c07b gui=none
highlight IncSearch      guifg=#191c21 guibg=#d492b3 gui=bold

" MatchParen: The temporary alert highlight when your cursor steps on a matching bracket
highlight MatchParen     guifg=NONE    guibg=#51617d gui=bold

" WinSeparator: The thin vertical dividing borders splitting your window viewports
highlight VertSplit      guifg=#323c4d guibg=NONE    gui=none
highlight WinSeparator   guifg=#323c4d guibg=NONE    gui=none

" Pop-up Menus & Floating Prompt Windows
highlight Pmenu          guifg=#9aa7bd guibg=#232936 gui=none
highlight PmenuSel       guifg=#191c21 guibg=#6d95cc gui=none
highlight PmenuSbar      guifg=NONE    guibg=#323c4d gui=none
highlight PmenuThumb     guifg=NONE    guibg=#6d95cc gui=none
highlight NormalFloat    guifg=#d6e2cf guibg=#232936 gui=none
highlight FloatBorder    guifg=#323c4d guibg=#232936 gui=none

" Command Line Notifications & Alert Messages
highlight ErrorMsg       guifg=#c2a79e guibg=#3d1e1e gui=bold
highlight WarningMsg     guifg=#e5c07b guibg=NONE    gui=none
highlight ModeMsg        guifg=#1a1a1a guibg=#709d6c gui=none
highlight MoreMsg        guifg=#709d6c guibg=NONE    gui=bold
highlight Question       guifg=#709d6c guibg=NONE    gui=bold


" ========================================================================
" SECTION 5: GIT DIFF LAYERS (VIMDIFF TRACKING MATRIX)
" ========================================================================
highlight diffAdd        guifg=#87af87 guibg=#1a1a1a gui=reverse
highlight diffDelete     guifg=#af5f5f guibg=#1a1a1a gui=reverse
highlight diffChange     guifg=#8787af guibg=#1a1a1a gui=reverse
highlight diffText       guifg=#ff8700 guibg=#1a1a1a gui=reverse
