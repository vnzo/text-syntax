" ========================================================================
" Script_name: text.vim
" Description: syntax for plain/text with custom punctuation & number rules.
" ========================================================================

syn case ignore
scriptencoding utf-8

" 1. KEYWORDS & MESSAGES
" ------------------------------------------------------------------------
syn keyword txtTodo todo fixme note debug comment notice
syn keyword txtError error bug caution dropped

" 2. BASE ELEMENTS (Numbers, Brackets, and Universal Punctuation)
" ------------------------------------------------------------------------
" English Numbers
syn match txtNumber /\v<\d+>/

" Chinese Numbers (ONLY colors them when they are at the start of a line, with optional spaces)
syn match txtChineseNumber /^\s*\zs[一二三四五六七八九十百千万零亿]\+/

" Universal Punctuation (Matches ALL English & Chinese punctuation marks)
syn match txtPunctuation /[,.:;!?\-+=*&^%$#@~`|\\\/，。：；！？、—…·～]/

" Other Brackets (Simple matches for shapes without inner text rules)
syn match txtOtherBrackets /[<>《》]/

" --- DYNAMIC BRACKET REGIONS (The "Shine-Through" Engine) ---
" Parentheses () and （）
syn region txtInsideParens matchgroup=txtParens start="[(（]" end="[)）]" contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtPunctuation,txtInsideParens,txtInsideBrackets,txtInsideBraces

" Square Brackets [] and 【】
syn region txtInsideBrackets matchgroup=txtBrackets start="[\[【]" end="[\]】]" contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtPunctuation,txtInsideParens,txtInsideBrackets,txtInsideBraces

" Curly Braces {}
syn region txtInsideBraces matchgroup=txtBraces start="{" end="}" contains=txtUrl,txtTodo,txtNumber,txtChineseNumber,txtPunctuation,txtInsideParens,txtInsideBrackets,txtInsideBraces

" 3. STRUCTURAL BLOCKS
" ------------------------------------------------------------------------
" Comments (Lines starting with #)
syn match txtCommentSymbol '^#\+' contained
syn match txtComment '^#.*$' contains=txtCommentSymbol,txtTodo,txtNumber,txtChineseNumber,txtPunctuation,txtOtherBrackets,txtInsideParens,txtInsideBrackets,txtInsideBraces,txtUrl,txtQuotes,txtApostrophe

" Titles
syn match txtTitle "^\(\d\+ \)\+\s*[^,。，]\+$" contains=txtChineseNumber
syn match txtTitle "^\(\d\+\.\)\+\s*[^,。，]\+$" contains=txtChineseNumber
syn match txtTitle "^\(\d\+\.\)\+\s*[^,。，]\+," contains=txtChineseNumber
syn match txtTitle "^\([一二三四五六七八九十][、.]\)\+\s*[^,。，]\+$" contains=txtChineseNumber
syn match txtTitle "^\([一二三四五六七八九十][、.]\)\+\s*[^,。，]\+," contains=txtChineseNumber
syn match txtTitle "^\d\s\+.\+\s*[^,。，]$" contains=txtChineseNumber
syn match txtTitle "^\d\s\+.\+\s*[^,。，]," contains=txtChineseNumber

" Lists & Bullets
syn match txtList '^\s*\zs[-+*.] [^ ]'me=e-1
syn match txtList '^\s*\zs(\=\([0-9]\+\|[a-zA-Z]\))' contains=txtChineseNumber
syn match txtList "^\s\+\zs\d\+\.\d\@!" contains=txtChineseNumber

" Quotes & Inline Text
syn match txtApostrophe '\(\n\|[^a-zA-Z]\)\'[^\']\+\(\n\)\=[^\']\+\'\(\n\|[^a-zA-Z]\)' contains=txtUrl,txtReference
syn match txtQuotes     '["“][^"”]\+\(\n\)\=[^"”]*["”]' contains=txtUrl,txtReference

" 4. NETWORKING & EMAIL DATA
" ------------------------------------------------------------------------
syn match txtUrl '\<[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\>\(?[A-Za-z0-9%&=+.,@*_-]\+\)\='
syn match txtUrl '\<\(\(https\=\|ftp\|news\|telnet\|gopher\|wais\)://\([A-Za-z0-9._-]\+\(:[^ @]*\)\=@\)\=\|\(www[23]\=\.\|ftp\.\)\)[A-Za-z0-9%._/~:,=$@-]\+\>/*\(?[A-Za-z0-9/%&=+.,@*_-]\+\)\=\(#[A-Za-z0-9%._-]\+\)\='
syn match txtEmailMsg '^\s*\(From\|De\|Sent\|To\|Para\|Date\|Data\|Assunto\|Subject\):.*'
syn match txtReference '^[|>:]\(\s*[|>:]\)*'

" ========================================================================
" THEME HIGHLIGHT LINKS (Semantic Group Assignments)
" ========================================================================
hi def link txtUrl          Underlined
hi def link txtTitle        Title
hi def link txtList         Statement
hi def link txtReference    DiffAdd
hi def link txtQuotes       String
hi def link txtApostrophe   Special
hi def link txtError        ErrorMsg
hi def link txtTodo         Todo
hi def link txtEmailMsg     Structure

" Theme links for your custom features:
hi def link txtNumber       Constant       
hi def link txtChineseNumber Constant     
hi def link txtPunctuation  Statement      
hi def link txtOtherBrackets Special        

" Bracket Frame Styling
hi def link txtParens       Identifier     
hi def link txtBrackets     Special        
hi def link txtBraces       Type           

" Inside-Bracket Text Styling
hi def link txtInsideParens   Comment      
hi def link txtInsideBrackets Comment      
hi def link txtInsideBraces   Comment      

" Comment Line styling
hi def link txtCommentSymbol Comment       
hi def link txtComment       Type          

let b:current_syntax = 'text'
