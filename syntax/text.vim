" ========================================================================
" Script_name: text.vim
" Description: Syntax for plain/text with custom punctuation & number rules.
" ========================================================================

syn case ignore
scriptencoding utf-8

" 1. KEYWORDS & MESSAGES
" ========================================================================
syn keyword txtTodo todo fixme note debug comment notice
syn keyword txtError error bug caution dropped

" 2. BASE ELEMENTS (Numbers, Brackets, and Universal Punctuation)
" ========================================================================
" English Numbers & Floats (Allows trailing units/letters like 10px or 0.3g)
syn match txtNumber "\v<\d+(\.\d+)?"

" Chinese Numbers (ONLY colors them when they are at the start of a line, with optional spaces)
syn match txtChineseNumber /^\s*\zs[一二三四五六七八九十百千万零亿]\+/
" Chinese Numbers Inline (Matches Chinese numbers followed by punctuation anywhere on a line)
syn match txtChineseNumInline /[一二三四五六七八九十百千万零亿]\+[\、\.]/

" Universal Punctuation (Matches English & Chinese punctuation marks)
syn match txtPunctuation /[\.,;:!?|\-+=\*&\^\°\/_\$#@\~\\|，。：；！？、—…·～]/

" Other Brackets (Simple matches for shapes without inner text rules)
syn match txtOtherBrackets /[<>＜＞]/

" SECTION 2: NERD FONT & EMOJI ICON ENGINE (100% Stable Vector Mapping)
" Split into categories for easy reading and editing. All map to txtIcons.

" Stars & Sparkles
syn match txtIcons /[✦✨⭐🌟💫]/

" Files, Folders & Documents
syn match txtIcons /[📁📂📄📝🗂💾🗑]/

" Status, Checks & Indicators
syn match txtIcons /[✅❌❎⚠️⛔💡📌🔴🟢🟡🔵]/

" UI, Tools & Locks
syn match txtIcons /[⚙🔧🔍🔒🔓✏✂📎]/

" Tech, Devices & Concepts
syn match txtIcons /[💻🖥📱🌐⚡🚀🐛]/

" Arrows & Navigation
syn match txtIcons /[➔➜➞➡⬅⬆⬇🔄]/

" --- DYNAMIC BRACKET REGIONS (With Ironclad Runaway Protection) ---
" Parentheses () and （）
syn region txtInsideParens matchgroup=txtParens start="[(（]" end="[)）]" keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline,txtPunctuation,txtInsideParens,txtInsideBrackets,txtInsideBraces

" FIXED: Removed txtInsideParens from contains= to prevent it from hijacking the color to Identifier
syn region txtInsideBrackets matchgroup=txtBrackets start="[\[【]" end="[\]】]" keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline,txtPunctuation,txtInsideBrackets,txtInsideBraces

" FIXED: Placed the closing brace safely inside the character class [...] so a single '}' ends it perfectly
syn region txtInsideBraces matchgroup=txtBraces start="[{｛]" end="[}｝]" keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline,txtPunctuation,txtInsideParens,txtInsideBrackets,txtInsideBraces

" 3. STRUCTURAL BLOCKS
" ========================================================================
" Comments (Lines starting with #)
syn match txtCommentSymbol '^#\+' contained
syn match txtComment '^#.*$' contains=txtCommentSymbol,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline,txtPunctuation,txtOtherBrackets,txtInsideParens,txtInsideBrackets,txtInsideBraces,txtUrl,txtQuotes,txtApostrophe

" Titles
syn match txtTitle /^\(\d\+\.\)\+\s*.*$/ contains=txtChineseNumber,txtChineseNumInline
syn match txtTitle /^（\([一二三四五六七八九十]\)[、 ]）\+\s*.*$/ contains=txtChineseNumber,txtChineseNumInline

" Lists & Bullets
syn match txtList /^\s*\zs[-+\*.]\s/
syn match txtList /^\s*\zs\d\+\.\s/ contains=txtChineseNumber,txtChineseNumInline


" 1. Contractions: Matches a single quote ONLY when it sits between letters (e.g., don't, it's)
" Matches ONLY the apostrophe character itself inside a contraction (like don't, it's, I'm)
syn match txtApostrophe "\a\zs'\ze\a"

" 2. DYNAMIC QUOTE REGIONS (Double, Single, and Chinese Quotes)
" Double Quotes: "example"
syn region txtInsideQuotes matchgroup=txtQuotes start=/"/ end=/"/ skip=/\\"/ keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline

" Single Quotes: 'example' (preserves txtApostrophe for contractions)
" syn region txtInsideQuotesSQ matchgroup=txtQuotes start=/\v(^|\s)\zs'/ end=/'/ skip=/\\'/ keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline

" Chinese Double Quotes: “中文双引号”
syn region txtInsideQuotesCNDouble matchgroup=txtQuotes start=/“/ end=/”/ keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline

" Chinese Single Quotes: ‘中文单引号’
syn region txtInsideQuotesCNSingle matchgroup=txtQuotes start=/‘/ end=/’/ keepend oneline contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtChineseNumInline

" 4. NETWORKING & EMAIL DATA
" ========================================================================
syn match txtUrl '\<[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\>'
syn match txtUrl '\<\(https\=\|ftp\):\/\/[A-Za-z0-9%._\/~:,=\$\@+\-]\+\>'
syn match txtEmailMsg '^\s*\(From\|De\|Sent\|To\|Para\|Date\|Data\|Assunto\|Subject\):.*$'
syn match txtReference /^[|>:]\+/

" ========================================================================
" THEME HIGHLIGHT LINKS (Semantic Group Assignments - FIXED SEPARATION)
" ========================================================================
hi def link txtUrl            Underlined
hi def link txtTitle          Title
hi def link txtList           Statement
hi def link txtReference      DiffAdd
hi def link txtQuotes         Operator
hi def link txtApostrophe     Special
hi def link txtError          ErrorMsg
hi def link txtTodo           Todo
hi def link txtEmailMsg       Structure

" Theme links for your custom features:
hi def link txtNumber         Number
hi def link txtChineseNumber   Number
hi def link txtChineseNumInline Number
hi def link txtPunctuation     Operator       " Separated: Maps punctuation to math/action signs
hi def link txtOtherBrackets  Delimiter      " Separated: Maps shapes to boundary delimiters

" Inside-Quote Text Styling (Links interior text payload to Function / Identifier)
hi def link txtInsideQuotes          Function
" hi def link txtInsideQuotesSQ        Function
hi def link txtInsideQuotesCNDouble  Function
hi def link txtInsideQuotesCNSingle  Function

" Bracket Frame Styling (FIXED: Separated from interior text payloads)
hi def link txtParens         Delimiter      " Separated: Outer brackets map to Delimiter
hi def link txtBrackets       Delimiter      " Separated: Outer brackets map to Delimiter
hi def link txtBraces         Delimiter      " Separated: Outer brackets map to Delimiter

" Inside-Bracket Text Styling (FIXED: Cleared bolding by linking to Identifier)
hi def link txtInsideParens   Identifier     " Mapped to your standard text or Green
hi def link txtInsideBrackets Special        " Mapped to an independent child block
hi def link txtInsideBraces   PreProc        " Mapped to another completely separate group

" Comment Line styling
hi def link txtCommentSymbol  SpecialComment
hi def link txtComment        Comment

" Global Fallback Link for Community Members:
hi def link txtIcons          Character

let b:current_syntax = 'text'
