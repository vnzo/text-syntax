
" ========================================================================
" Theme: winter_pure.vim (The Ultimate Glacial Water - Standalone Edition)
" Description: Clean, standalone theme with your custom migrated winter values.
" ========================================================================

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "autumn"
set background=dark

" ========================================================================
" SECTION 1: MAIN EDITOR WINDOW & TEXT LAYERS
" ========================================================================

" Normal: Your main document background layer (Deep Oceanic Abyss) and core prose (Foam White)
highlight Normal         guifg=#d8dee9 guibg=#1a1f29 gui=none

" NonText: Invisible layout helpers like hidden tab lines or carriage markers
highlight NonText        guifg=#434c5e guibg=NONE    gui=none

" EndOfBuffer: The empty tilde (~) rows that fill the window below your document text
highlight EndOfBuffer    guifg=#434c5e guibg=NONE    gui=none


" ========================================================================
" SECTION 2: GLOBAL PUNCTUATION & MATRIX DIVIDERS (FULLY DECOUPLED)
" ========================================================================

" Operator: Targets mathematical and assignment signs: + - * / = < > (Polar Ice Stream)
highlight Operator       guifg=#ce7a7a guibg=NONE    gui=none

" Delimiter: Structural brackets ( ) [ ] { } turn a clean, high-contrast Foam White
highlight Delimiter      guifg=#d8dee9 guibg=NONE    gui=none


" ========================================================================
" SECTION 3: STANDARD MASTER SYNTAX FAMILIES (ALL PARENTS & CHILDREN)
" ========================================================================

" --- COMMENT FAMILY ---
" Comment: Targets your main comment text sentences (Storm Grey)
highlight Comment         guifg=#949dae guibg=NONE    gui=none
" SpecialComment: Targets ONLY your starting hash symbol characters (# or #+) (Glacial Teal)
highlight SpecialComment  guifg=#5d7c9e guibg=NONE    gui=none

" --- TODO FAMILY ---
" Todo: Solid campfire block: Aurora Sand Yellow on a deep Plum Shadow background block
highlight Todo            guifg=#ebcb8b guibg=#4f3224 gui=bold

" --- IDENTIFIER FAMILY ---
" Identifier: Targets your parentheses payload text natively -> (Glacial Polar Water Teal)
highlight Identifier      guifg=#8fbcbb guibg=NONE    gui=none
" Function: Targets action or system routing command routine names (Clear Ice Blue)
highlight Function        guifg=#b2978c guibg=NONE    gui=none

" --- STATEMENT FAMILY ---
" Statement: Standard universal parent for active program execution instructions (Fluid Wave Blue)
highlight Statement       guifg=#81a1c1 guibg=NONE    gui=none
" Conditional: Targets decision structures like if, else, switch, ternary markers
highlight Conditional     guifg=#81a1c1 guibg=NONE    gui=none
" Repeat: Targets counting loops like while, for, loop, do-while chains
highlight Repeat          guifg=#81a1c1 guibg=NONE    gui=none
" Label: Targets specific anchor jump points like case:, default:, or start: labels
highlight Label           guifg=#81a1c1 guibg=NONE    gui=none
" Keyword: Targets language-reserved words that initialize internal variables
highlight Keyword         guifg=#81a1c1 guibg=NONE    gui=none
" Exception: Targets failure recovery statements like try, catch, throw, finally
highlight Exception       guifg=#81a1c1 guibg=NONE    gui=none

" --- PREPROC FAMILY ---
" PreProc: Standard universal parent for compiler directive macros and headers (Glacial Water Teal)
highlight PreProc         guifg=#8baed0 guibg=NONE    gui=none
" Include: Targets file integration statements like include, import, require
highlight Include         guifg=#81a1c1 guibg=NONE    gui=none
" Define: Targets compiler variable declarations like define, macro definitions
highlight Define          guifg=#81a1c1 guibg=NONE    gui=none
" Macro: Targets dynamic runtime macro structures and token substitution rules
highlight Macro           guifg=#81a1c1 guibg=NONE    gui=none
" PreCondit: Targets precompiler logic checks like #if, #ifdef, #ifndef
highlight PreCondit       guifg=#81a1c1 guibg=NONE    gui=bold

" --- TYPE FAMILY ---
" Type: Standard universal parent for base classes and data signatures (Clear Ice Blue Stream)
highlight Type            guifg=#88c0d0 guibg=NONE    gui=none
" StorageClass: Targets memory scope modifiers like static, volatile, register, const
highlight StorageClass    guifg=#81a1c1 guibg=NONE    gui=none
" Structure: Targets compound variable structures like struct, class, union, enum
highlight Structure       guifg=#81a1c1 guibg=NONE    gui=none
" Typedef: Targets custom user typealias definitions that rename base primitives
highlight Typedef         guifg=#81a1c1 guibg=NONE    gui=bold

" --- CONSTANT FAMILY ---
" Constant: Standard universal parent for static literal values (Pure Ice White)
highlight Constant        guifg=#eceff4 guibg=NONE    gui=none
" String: Targets literal data text enclosed cleanly inside quotation marks (Deep Kelp Green)
highlight String          guifg=#8fad96 guibg=NONE    gui=italic
" StringDelimiter: Targets the literal opening/closing quote characters themselves (" ")
highlight StringDelimiter guifg=#3e8fc5 guibg=NONE    gui=none
" Character: Targets single-quoted isolated alphanumeric characters like 'c', '7'
highlight Character       guifg=#8fad96 guibg=NONE    gui=none
" Number: Targets standard absolute digit fields (0-9) used in variables (Aurora Twilight Purple)
highlight Number          guifg=#b76f5e guibg=NONE    gui=none
" Boolean: Targets logical state validation words like true, false, yes, no
highlight Boolean         guifg=#b48ead guibg=NONE    gui=none
" Float: Targets specific floating-point decimal point numbers like 0.25, 3.1415
highlight Float           guifg=#b48ead guibg=NONE    gui=none

" --- SPECIAL FAMILY ---
" Special: Standard universal parent for escape lines, delimiters, and boundary codes
highlight Special         guifg=#88c0d0 guibg=NONE    gui=none
" SpecialChar: Targets literal backslash escape strings (\n, \t) typed inside quotes
highlight SpecialChar     guifg=#ebcb8b guibg=NONE    gui=bold
" Tag: Targets markup language enclosure boundaries like HTML/XML tags
highlight Tag             guifg=#81a1c1 guibg=NONE    gui=bold
" Debug: Targets troubleshooting markers, print boundaries, or breakpoint flags
highlight Debug           guifg=#ebcb8b guibg=NONE    gui=none

" --- UNDERLINED FAMILY ---
" Underlined: Targets hyperlinks, web links, and raw URLs (Sunlit Glacier Aqua)
highlight Underlined      guifg=#7d93ab guibg=NONE    gui=underline


" ========================================================================
" SECTION 4: BASIC EDITOR INTERFACE & CURSOR LAYERS
" ========================================================================

" Cursor: The physical color of your block cursor and the character underneath it
highlight Cursor         guifg=#1a1f29 guibg=#d8dee9 gui=none

" CursorLine: The soft horizontal background bar tracking your active cursor row
highlight CursorLine     guifg=NONE    guibg=#242b37 gui=none
highlight CursorColumn   guifg=NONE    guibg=#242b37 gui=none

" LineNr: The standard numbers sitting inside your left editor margin
highlight LineNr         guifg=#4c566a guibg=NONE    gui=none

" CursorLineNr: The active line number directly next to your cursor row
highlight CursorLineNr   guifg=#88c0d0 guibg=#242b37 gui=bold

" Visual: The background selection highlight when grabbing chunks of text
highlight Visual         guifg=NONE    guibg=#3b4252 gui=none

" Search: The background glow when hunting down terms with the '/' command
highlight Search         guifg=#1a1f29 guibg=#ebcb8b gui=none
highlight IncSearch      guifg=#1a1f29 guibg=#d08770 gui=bold

" MatchParen: The temporary alert highlight when your cursor steps on a matching bracket
highlight MatchParen     guifg=NONE    guibg=#4c566a gui=bold

" WinSeparator: The thin vertical dividing borders splitting your window viewports
highlight VertSplit      guifg=#3b4252 guibg=NONE    gui=none
highlight WinSeparator   guifg=#3b4252 guibg=NONE    gui=none

" Pop-up Menus & Floating Prompt Windows
highlight Pmenu          guifg=#d8dee9 guibg=#242b37 gui=none
highlight PmenuSel       guifg=#1a1f29 guibg=#88c0d0 gui=none
highlight PmenuSbar      guifg=NONE    guibg=#3b4252 gui=none
highlight PmenuThumb     guifg=NONE    guibg=#4c566a gui=none
highlight NormalFloat    guifg=#d8dee9 guibg=#242b37 gui=none
highlight FloatBorder    guifg=#3b4252 guibg=#242b37 gui=none

" Command Line Notifications & Alert Messages
highlight ErrorMsg       guifg=#ffffff guibg=#5c2522 gui=bold
highlight WarningMsg     guifg=#ebcb8b guibg=NONE    gui=none
highlight ModeMsg        guifg=#8fad96 guibg=NONE    gui=none
highlight MoreMsg        guifg=#81a1c1 guibg=NONE    gui=bold
highlight Question       guifg=#8fad96 guibg=NONE    gui=bold


" ========================================================================
" SECTION 5: GIT DIFF LAYERS (VIMDIFF TRACKING MATRIX)
" ========================================================================
highlight diffAdd        guifg=NONE    guibg=#29352e gui=none
highlight diffDelete     guifg=#3b4252 guibg=#bf616a gui=none
highlight diffChange     guifg=NONE    guibg=#253141 gui=none
highlight diffText       guifg=#1a1f29 guibg=#81a1c1 gui=bold
