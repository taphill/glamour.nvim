local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local bold = s.bold
local italic = s.italic
local uc = s.undercurl
local ul = s.underline
local reverse = s.reverse
local none = s.NONE
local v = vim.g

v.colors_name = 'glamour_nvim'


-------------------
-- Color Palette --
-------------------

Color.new('bg0', '#282828')
Color.new('bg1', '#3c3836')
Color.new('bg2', '#504945')
Color.new('bg3', '#665c54')
Color.new('bg4', '#7c6f64')

Color.new('fg0', '#fbf1c7')
Color.new('fg1', '#ebdbb2')
Color.new('fg2', '#d5c4a1')
Color.new('fg3', '#bdae93')
Color.new('fg4', '#a89984')

Color.new('red',    '#fb4934')
Color.new('green',  '#b8bb26')
Color.new('yellow', '#fabd2f')
Color.new('blue',   '#83a598')
Color.new('purple', '#d3869b')
Color.new('aqua',   '#8ec07c')
Color.new('orange', '#fe8019')
Color.new('gray',   '#928374')


---------------------
-- Terminal Colors --
---------------------

v.terminal_color_0 = '#282828'   -- black
v.terminal_color_8 = '#282828'   -- black bright

v.terminal_color_1 = '#FF301B'   -- red
v.terminal_color_9 = '#FF4352'   -- red

v.terminal_color_2 = '#A0E521'   -- green
v.terminal_color_10 = '#B8E466'  -- green

v.terminal_color_3 = '#FFC620'   -- yellow
v.terminal_color_11 = '#FFD750'  -- yellow bright

v.terminal_color_4 = '#1BA6FA'   -- blue
v.terminal_color_12 = '#1BA6FA'  -- blue bright

v.terminal_color_5 = '#d3869b'   -- magenta
v.terminal_color_13 = '#AB9DF2'  -- magenta bright

v.terminal_color_6 = '#21DEEF'   -- cyan
v.terminal_color_14 = '#73FBF1'  -- cyan bright

v.terminal_color_7 = '#ebdbb2'   -- white
v.terminal_color_15 = '#ebdbb2'  -- white bright


-------------------------------------------------------------
-- Syntax Groups (descriptions and ordering from `:h w18`) --
-------------------------------------------------------------

Group.new('Boolean', c.purple, c.none, none)         -- Boolean constant: TRUE, false
Group.new('Character', c.purple, c.none, none)       -- Character constant: 'c', '/n'
Group.new('Conditional', c.red, c.none, none)        -- An if, then, else, endif, switch, etc.
Group.new('Constant', c.purple, c.none, none)        -- Generic constant
Group.new('Debug', c.red, c.none, none)              -- Debugging statements
Group.new('Define', c.aqua, c.none, none)            -- Preprocessor #define
Group.new('Exception', c.red, c.none, none)          -- A try, catch, throw, etc.
Group.new('Float', c.purple, c.none, none)           -- Floating point constant: 2.3e10
Group.new('Function', c.green, c.none, bold)         -- Function/Method name
Group.new('Include', c.aqua, c.none, none)           -- Preprocessor #include
Group.new('Identifier', c.blue, c.none, none)        -- Variable name
Group.new('Keyword', c.red, c.none, none)            -- Any other keyword
Group.new('Label', c.red, c.none, none)              -- A case, default, etc.
Group.new('Macro', c.aqua, c.none, none)             -- Same as Define
Group.new('Number', c.purple, c.none, none)          -- Number constant: 234, 0xff
Group.new('Operator', c.fg1, c.none, none)           -- sizeof", "+", "*", etc.
Group.new('PreCondit', c.aqua, c.none, none)         -- Preprocessor #if, #else, #endif, etc.
Group.new('PreProc', c.aqua, c.none, none)           -- Generic Preprocessor
Group.new('Repeat', c.red, c.none, none)             -- A for, do, while, etc.
Group.new('Statement', c.red, c.none, none)          -- Generic statement
Group.new('StorageClass', c.orange, c.none, none)    -- A static, register, volatile, etc.
Group.new('String', c.green, c.none, none)           -- String constant
Group.new('Structure', c.aqua, c.none, none)         -- A struct, union, enum, etc.
Group.new('Type', c.yellow, c.none, none)            -- Generic type: int, long, char, etc.
Group.new('Typedef', c.yellow, c.none, none)         -- A typedef

Group.new('Comment', c.gray, c.none, italic)         -- Comments
Group.new('Error', c.red, c.none, bold + reverse)    -- Error
Group.new('Todo', c.fg0, c.bg0, bold + italic)       -- TODO
Group.new('Underlined', c.blue, c.none, ul)


--------------------------------------------------------------------------------
-- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) --
--------------------------------------------------------------------------------

-- General UI
Group.new('Normal', c.fg1, c.bg0, none)              -- The main background and foreground colors
Group.new('ColorColumn', c.none, c.bg1, none)         -- Used for the columns set with 'colorcolumn'
Group.new('Conceal', c.blue, c.bg0, none)            -- Placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', c.none, c.none, reverse)         -- The character under the cursor
Group.new('CursorColumn', c.none, c.none, reverse)   -- Current cursor column highlight
Group.new('CursorLine', c.none, c.bg1, none)
Group.new('CursorLineNr', c.yellow, c.bg1, none)     -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line
Group.new('CursorIM', c.fg1, c.none, reverse)        -- Like Cursor but used when in IME mode
Group.new('Directory', c.orange, c.none, bold)       -- Directory names (and other special names in listings)
Group.new('EndOfBuffer', c.gray, c.none, none)       -- The '~' displayed and the end of a buffer
Group.new('ErrorMsg', c.bg0, c.red, bold)            -- Error messages on the command line
Group.new('MatchParen', c.none, c.bg3, bold)         -- Match paired bracket under the cursor
Group.new('MoreMsg', c.yellow, c.none, bold)         -- More-prompt: -- More --
Group.new('ModeMsg', c.yellow, c.none, bold)         -- Current mode message (e.g., -- INSERT --)
Group.new('NonText', c.gray, c.none, none)           -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line)
Group.new('Question', c.orange, c.none, bold)        -- 'Press enter' prompt and yes/no questions
Group.new('Search', c.yellow, c.bg0, reverse)        -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('IncSearch', c.yellow, c.bg0, reverse)     -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('SpecialKey', c.bg2, c.none, none)         -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is
Group.new('StatusLine', c.bg2, c.fg1, reverse)                                 -- Status line of current window
Group.new('StatusLineNC', c.bg1, c.fg4, reverse)                               -- Status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window
Group.new('StatusLineTerm', g.StatusLine, g.StatusLine, g.StatusLine)          -- Status line of current :terminal window
Group.new('StatusLineTerm', c.bg0, c.green, g.StatusLine)                      -- Status line of current :terminal window
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC)  -- Status line of non-current :terminal window
Group.new('TabLineFill', c.bg4, c.bg1, none)                                   -- Tab pages line filler
Group.new('TabLineSel', c.green, c.bg1, none)                                  -- Active tab page label
Group.new('TabLine', g.TabLineFill, g.TabLineFill, g.TabLineFill)
Group.new('Title', c.green, c.none, bold)            -- Titles for output from :set all, :autocmd, etc.
Group.new('Visual', c.none, c.bg3, reverse)          -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('VertSplit', c.bg3, c.none, none)          -- The column separating vertically split windows
Group.new('WarningMsg', c.red, c.none, bold)         -- Warning messages
Group.new('WildMenu', c.blue, c.bg2, bold)           -- Current match in wildmenu completion

-- Diffs
Group.new('DiffAdd', c.green, c.bg0, reverse)        -- Diff mode: Added line
Group.new('DiffChange', c.aqua, c.bg0, reverse)      -- Diff mode: Changed line
Group.new('DiffDelete', c.red, c.bg0, reverse)       -- Diff mode: Deleted line
Group.new('DiffText', c.yellow, c.bg0, reverse)      -- Diff mode: Changed text within a changed line

-- Completion Menu
Group.new('Pmenu', c.fg1, c.bg2, none)               -- Popup menu: normal item
Group.new('PmenuSel', c.bg2, c.blue, bold)           -- Popup menu: selected item
Group.new('PmenuSbar', c.none, c.bg2, none)          -- Popup menu: scrollbar
Group.new('PmenuThumb', c.none, c.bg4, none)         -- Popup menu: scrollbar thumb

-- Gutter
Group.new('Folded', c.gray, c.bg1, italic)           -- Line used for closed folds
Group.new('FoldColumn', c.gray, c.bg1, none)         -- Column where folds are displayed
Group.new('LineNr', c.gray, c.none, none)            -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('SignColumn', c.fg1, c.none, none)         -- column where signs are displayed

-- Spelling
Group.new('SpellBad', c.red, c.none, italic + uc)      -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', c.green, c.none, italic + bold)  -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', c.none, c.none, uc)            -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', c.purple, c.none, uc)           -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.


------------------------------------
-- Language-Specific Highlighting --
------------------------------------

-- CSS
Group.new('cssBraces', c.blue, c.none, none)
Group.new('cssFunctionName', c.yellow, c.none, none)
Group.new('cssIdentifier', c.orange, c.none, none)
Group.new('cssClassName', c.green, c.none, none)
Group.new('cssColor', c.blue, c.none, none)
Group.new('cssSelectorOp', c.blue, c.none, none)
Group.new('cssSelectorOp2', c.blue, c.none, none)
Group.new('cssImportant', c.green, c.none, none)
Group.new('cssVendor', c.fg1, c.none, none)
Group.new('cssTextProp', c.aqua, c.none, none)
Group.new('cssAnimationProp', c.aqua, c.none, none)
Group.new('cssUIProp', c.yellow, c.none, none)
Group.new('cssTransformProp', c.aqua, c.none, none)
Group.new('cssTransitionProp', c.aqua, c.none, none)
Group.new('cssPrintProp', c.aqua, c.none, none)
Group.new('cssPositioningProp', c.yellow, c.none, none)
Group.new('cssBoxProp', c.aqua, c.none, none)
Group.new('cssFontDescriptorProp', c.aqua, c.none, none)
Group.new('cssFlexibleBoxProp', c.aqua, c.none, none)
Group.new('cssBorderOutlineProp', c.aqua, c.none, none)
Group.new('cssBackgroundProp', c.aqua, c.none, none)
Group.new('cssMarginProp', c.aqua, c.none, none)
Group.new('cssListProp', c.aqua, c.none, none)
Group.new('cssTableProp', c.aqua, c.none, none)
Group.new('cssFontProp', c.aqua, c.none, none)
Group.new('cssPaddingProp', c.aqua, c.none, none)
Group.new('cssDimensionProp', c.aqua, c.none, none)
Group.new('cssRenderProp', c.aqua, c.none, none)
Group.new('cssColorProp', c.aqua, c.none, none)
Group.new('cssGeneratedContentProp', c.aqua, c.none, none)

-- HTML
Group.new('htmlTag', c.blue, c.none, none)
Group.new('htmlEndTag', c.blue, c.none, none)
Group.new('htmlTagName', c.aqua, c.none, bold)
Group.new('htmlArg', c.aqua, c.none, none)
Group.new('htmlScriptTag', c.purple, c.none, none)
Group.new('htmlTagN', c.fg1, c.none, none)
Group.new('htmlSpecialTagName', c.aqua, c.none, bold)
Group.new('htmlSpecialChar', c.aqua, c.none, none)
Group.new('htmlLink', c.fg4, c.none, ul)
Group.new('htmlBold', c.fg1, c.bg0, bold)
Group.new('htmlBoldUnderline', c.fg1, c.bg0, bold + ul)
Group.new('htmlBoldItalic', c.fg1, c.bg0, bold + italic)
Group.new('htmlItalic', c.fg1, c.bg0, italic)
Group.new('htmlUnderline', c.fg1, c.bg0, ul)
Group.new('htmlUnderlineItalic', c.fg1, c.bg0, ul + italic)

-- JavaScript
Group.new('javaScriptBraces', c.fg4, c.none, none)
Group.new('javaScriptFunction', c.aqua, c.none, none)
Group.new('javaScriptIdentifier', c.red, c.none, none)
Group.new('javaScriptMember', c.blue, c.none, none)
Group.new('javaScriptNumber', c.purple, c.none, none)
Group.new('javaScriptNull', c.purple, c.none, none)
Group.new('javaScriptParens', c.fg4, c.none, none)
Group.new('jsClassKeyword', c.aqua, c.none, none)
Group.new('jsExtendsKeyword', c.aqua, c.none, none)
Group.new('jsExportDefault', c.aqua, c.none, none)
Group.new('jsTemplateBraces', c.aqua, c.none, none)
Group.new('jsGlobalNodeObjects', c.fg1, c.none, none)
Group.new('jsGlobalObjects', c.yellow, c.none, none)
Group.new('jsObjectKey', c.purple, c.none, none)
Group.new('jsFunction', c.aqua, c.none, none)
Group.new('jsFuncCall', c.blue, c.none, none)
Group.new('jsFuncParens', c.fg4, c.none, none)
Group.new('jsFuncBraces', c.fg4, c.none, none)
Group.new('jsSwitchBraces', c.fg4, c.none, none)
Group.new('jsClassBraces', c.fg4, c.none, none)
Group.new('jsObjectBraces', c.fg4, c.none, none)
Group.new('jsParens', c.fg4, c.none, none)
Group.new('jsNull', c.purple, c.none, none)
Group.new('jsUndefined', c.purple, c.none, none)
Group.new('jsClassDefinition', c.yellow, c.none, none)
Group.new('jsArrowFunction', c.fg4, c.none, none)
Group.new('jsRepeatBraces', c.fg4, c.none, none)
Group.new('jsIfElseBraces', c.fg4, c.none, none)
Group.new('jsBrackets', c.fg4, c.none, none)
Group.new('jsNoise', c.fg4, c.none, none)

-- TypeScript
Group.new('typeScriptReserved', c.aqua, c.none, none)
Group.new('typeScriptLabel', c.aqua, c.none, none)
Group.new('typeScriptFuncKeyword', c.aqua, c.none, none)
Group.new('typeScriptIdentifier', c.orange, c.none, none)
Group.new('typeScriptBraces', c.fg1, c.none, none)
Group.new('typeScriptEndColons', c.fg1, c.none, none)
Group.new('typeScriptDOMObjects', c.fg1, c.none, none)
Group.new('typeScriptAjaxMethods', c.fg1, c.none, none)
Group.new('typeScriptLogicSymbols', c.fg1, c.none, none)
Group.new('typeScriptDocSeeTag', c.gray, c.none, none)
Group.new('typeScriptDocParam', c.gray, c.none, none)
Group.new('typeScriptDocTags', c.gray, c.none, none)
Group.new('typeScriptGlobalObjects', c.fg1, c.none, none)
Group.new('typeScriptParens', c.fg3, c.none, none)
Group.new('typeScriptOpSymbols', c.fg3, c.none, none)
Group.new('typeScriptHtmlElemProperties', c.fg1, c.none, none)
Group.new('typeScriptNull', c.purple, c.none, none)
Group.new('typeScriptInterpolationDelimiter', c.aqua, c.none, none)

-- C
Group.new('cOperator', c.purple, c.none, none)
Group.new('cStructure', c.orange, c.none, none)

-- Objective C
Group.new('objcTypeModifier', c.red, c.none, none)
Group.new('objcDirective', c.blue, c.none, none)

-- Elixir
Group.new('elixirDocString', c.gray, c.none, none)
Group.new('elixirStringDelimiter', c.green, c.none, none)
Group.new('elixirInterpolationDelimiter', c.aqua, c.none, none)
Group.new('elixirModuleDeclaration', c.yellow, c.none, none)

-- Go
Group.new('goDirective', c.aqua, c.none, none)
Group.new('goConstants', c.purple, c.none, none)
Group.new('goDeclaration', c.red, c.none, none)
Group.new('goDeclType', c.blue, c.none, none)
Group.new('goBuiltins', c.orange, c.none, none)

-- Lua
Group.new('luaFunc', c.red, c.none, bold)
Group.new('luaTable', c.fg1, c.none, bold)

-- Python
Group.new('pythonBuiltin', c.orange, c.none, none)
Group.new('pythonBuiltinObj', c.orange, c.none, none)
Group.new('pythonBuiltinFunc', c.orange, c.none, none)
Group.new('pythonFunction', c.aqua, c.none, none)
Group.new('pythonDecorator', c.red, c.none, none)
Group.new('pythonInclude', c.blue, c.none, none)
Group.new('pythonImport', c.blue, c.none, none)
Group.new('pythonRun', c.blue, c.none, none)
Group.new('pythonCoding', c.blue, c.none, none)
Group.new('pythonOperator', c.red, c.none, none)
Group.new('pythonException', c.red, c.none, none)
Group.new('pythonExceptions', c.purple, c.none, none)
Group.new('pythonBoolean', c.purple, c.none, none)
Group.new('pythonDot', c.fg3, c.none, none)
Group.new('pythonConditional', c.red, c.none, none)
Group.new('pythonRepeat', c.red, c.none, none)
Group.new('pythonDottedName', c.green, c.none, bold)

-- Ruby
Group.new('rubyHelper', c.fg1, c.none, none)
Group.new('rubyInterpolationDelimiter', c.aqua, c.none, none)
Group.new('rubyStringDelimiter', c.green, c.none, none)

-- Solidity 
-- Requires taphill/vim-solidity which is a fork of tomlion/vim-solidity
Group.new('solContract', c.aqua, c.none, none)
Group.new('solContractName', c.yellow, c.none, none)
Group.new('solFunction', c.aqua, c.none, none)
Group.new('solFuncName', c.green, c.none, none)

-- JSON
Group.new('jsonKeyword', c.green, c.none, none)
Group.new('jsonQuote', c.green, c.none, none)
Group.new('jsonBraces', c.fg1, c.none, none)
Group.new('jsonString', c.fg1, c.none, none)

-- Markdown
Group.new('markdownH1', c.green, c.none, bold)
Group.new('markdownH2', c.green, c.none, bold)
Group.new('markdownH3', c.yellow, c.none, bold)
Group.new('markdownH4', c.yellow, c.none, bold)
Group.new('markdownH5', c.yellow, c.none, none)
Group.new('markdownH6', c.yellow, c.none, none)
Group.new('markdownCode', c.aqua, c.none, none)
Group.new('markdownCodeBlock', c.aqua, c.none, none)
Group.new('markdownCodeDelimiter', c.aqua, c.none, none)
Group.new('markdownBlockquote', c.gray, c.none, none)
Group.new('markdownListMarker', c.gray, c.none, none)
Group.new('markdownOrderedListMarker', c.gray, c.none, none)
Group.new('markdownRule', c.gray, c.none, none)
Group.new('markdownHeadingRule', c.gray, c.none, none)
Group.new('markdownUrlDelimiter', c.fg3, c.none, none)
Group.new('markdownLinkDelimiter', c.fg3, c.none, none)
Group.new('markdownLinkTextDelimiter', c.fg3, c.none, none)
Group.new('markdownHeadingDelimiter', c.orange, c.none, none)
Group.new('markdownUrl', c.purple, c.none, none)
Group.new('markdownUrlTitleDelimiter', c.green, c.none, none)
Group.new('markdownLinkText', c.gray, c.none, ul)
Group.new('markdownIdDeclaration', c.gray, c.none, ul)
Group.new('markdownItalic', c.fg3, c.none, italic)


---------------------
-- Neovim Builtins --
---------------------

Group.new("healthError",c.red, c.fg2)
Group.new("healthSuccess",c.green, c.bg0)
Group.new("healthWarning",c.yellow, c.bg0)
Group.new("TermCursorNC",c.fg1, c.bg0)
