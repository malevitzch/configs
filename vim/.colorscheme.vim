" Start defining the color scheme
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "tokyonight_ripoff" 

" Clear previous highlights
highlight clear

" Basic UI elements
highlight Normal        guifg=#c0caf5 guibg=#1a1b26     " Default text
highlight Cursor        guifg=#000000 guibg=#FFFFFF     " Cursor color
highlight LineNr        guifg=#3b4261 guibg=#1a1b26     " Line numbers
highlight CursorLineNr  guifg=#FFFF00 guibg=#000000     " Current line number
highlight Visual        guibg=#264F78                   " Visual mode selection
highlight Search        guifg=#000000 guibg=#FFFF00     " Search results
highlight IncSearch     guifg=#000000 guibg=#FFD700     " Incremental search

" Syntax highlighting
highlight Operator      guifg=#89ddff                   " Operators
highlight Comment       guifg=#565f89                   " Comments
highlight Constant      guifg=#f29660                   " Constants
highlight String        guifg=#9ece6a                   " Strings
highlight Identifier    guifg=#e0af68                   " Identifiers
highlight Function      guifg=#7aa2f7                   " Functions
highlight Statement     guifg=#bb9af7                   " Statements
highlight Keyword       guifg=#61AFEF                   " Keywords
highlight Type          guifg=#E06C75                   " Types
highlight Special       guifg=#C678DD                   " Special characters
highlight Todo          guifg=#000000 guibg=#FFD700     " TODO items
highlight Error         guifg=#FFFFFF guibg=#FF0000     " Errors
highlight WarningMsg    guifg=#FFD700 guibg=#000000     " Warnings

" Diff highlighting
highlight DiffAdd       guifg=#00FF00 guibg=#002800    " Added lines
highlight DiffChange    guifg=#0000FF guibg=#000028    " Changed lines
highlight DiffDelete    guifg=#FF0000 guibg=#280000    " Deleted lines
highlight DiffText      guifg=#FFFF00 guibg=#282800    " Text in diffs

" Status Line and Tab Line
highlight StatusLine    guifg=#000000 guibg=#00FF00    " Status line
highlight StatusLineNC  guifg=#5E5E5E guibg=#000000    " Inactive status line
highlight TabLine       guifg=#5E5E5E guibg=#000000    " Tab line
highlight TabLineSel    guifg=#000000 guibg=#FFFF00    " Selected tab line
highlight TabLineFill   guifg=#5E5E5E guibg=#000000    " Empty tab line space

" Add more groups and customize as needed
" For a complete list of syntax groups, you can refer to :help highlight-groups
