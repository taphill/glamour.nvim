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

Color.new('bg0', '#282c34')
Color.new('bg1', '#353b45')
Color.new('bg2', '#504945')
Color.new('bg3', '#665c54')
Color.new('bg4', '#7c6f64')

Color.new('fg0', '#fbf1c7')
Color.new('fg1', '#d8dee9')
Color.new('fg2', '#d5c4a1')
Color.new('fg3', '#bdae93')
Color.new('fg4', '#a89984')

Color.new('red',    '#fc929e')
Color.new('green',  '#8dc891')
Color.new('yellow', '#fac863')
Color.new('blue',   '#6699cc')
Color.new('purple', '#c5a5c5')
Color.new('aqua',   '#88c6Be')
Color.new('orange', '#ff8b50')
Color.new('gray',   '#6d6d6d')

Color.new('highlight', '#586273')


---------------------
-- Terminal Colors --
---------------------

v.terminal_color_0 = '#282c34'   -- black
v.terminal_color_8 = '#282c34'   -- black bright

v.terminal_color_1 = '#fc929e'   -- red
v.terminal_color_9 = '#fc929e'   -- red

v.terminal_color_2 = '#8dc891'   -- green
v.terminal_color_10 = '#8dc891'  -- green

v.terminal_color_3 = '#fac863'   -- yellow
v.terminal_color_11 = '#fac863'  -- yellow bright

v.terminal_color_4 = '#6699cc'   -- blue
v.terminal_color_12 = '#6699cc'  -- blue bright

v.terminal_color_5 = '#c5a5c5'   -- magenta
v.terminal_color_13 = '#c5a5c5'  -- magenta bright

v.terminal_color_6 = '#88c6Be'   -- cyan
v.terminal_color_14 = '#88c6Be'  -- cyan bright

v.terminal_color_7 = '#ffffff'   -- white
v.terminal_color_15 = '#ffffff'  -- white bright


-------------------------------------------------------------
-- Syntax Groups (descriptions and ordering from `:h w18`) --
-------------------------------------------------------------

Group.new('Boolean', c.orange, c.none, none)         -- Boolean constant: TRUE, false
Group.new('Character', c.purple, c.none, none)       -- Character constant: 'c', '/n'
Group.new('Conditional', c.purple, c.none, none)     -- An if, then, else, endif, switch, etc.
Group.new('Constant', c.purple, c.none, none)        -- Generic constant
Group.new('Debug', c.red, c.none, none)              -- Debugging statements
Group.new('Define', c.aqua, c.none, none)            -- Preprocessor #define
Group.new('Exception', c.red, c.none, none)          -- A try, catch, throw, etc.
Group.new('Float', c.blue, c.none, none)             -- Floating point constant: 2.3e10
Group.new('Function', c.yellow, c.none, none)        -- Function/Method name
Group.new('Include', c.aqua, c.none, none)           -- Preprocessor #include
Group.new('Identifier', c.purple, c.none, none)      -- Variable name
Group.new('Keyword', c.purple, c.none, none)         -- Any other keyword
Group.new('Label', c.purple, c.none, none)           -- A case, default, etc.
Group.new('Macro', c.aqua, c.none, none)             -- Same as Define
Group.new('Number', c.blue, c.none, none)            -- Number constant: 234, 0xff
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
Group.new('ColorColumn', c.none, c.bg1, none)        -- Used for the columns set with 'colorcolumn'
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
Group.new('Visual', c.none, c.highlight, none)             -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual) -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('VertSplit', c.bg3, c.none, none)          -- The column separating vertically split windows
Group.new('WarningMsg', c.red, c.none, bold)         -- Warning messages
Group.new('WildMenu', c.yellow, c.bg2, bold)         -- Current match in wildmenu completion

-- Diagnostics
-- Group.new('DiagnosticUnderlineError', c.none, c.red, none)
-- Group.new('DiagnosticUnderlineWarn', c.none, c.yellow, none)

-- Diffs
Group.new('DiffAdd', c.green, c.bg0, reverse)        -- Diff mode: Added line
Group.new('DiffChange', c.aqua, c.bg0, reverse)      -- Diff mode: Changed line
Group.new('DiffDelete', c.red, c.bg0, reverse)       -- Diff mode: Deleted line
Group.new('DiffText', c.yellow, c.bg0, reverse)      -- Diff mode: Changed text within a changed line

-- Completion Menu
Group.new('Pmenu', c.fg1, c.bg2, none)               -- Popup menu: normal item
Group.new('PmenuSel', c.bg2, c.yellow, bold)           -- Popup menu: selected item
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
Group.new('cssAttrRegion', c.fg1, c.none, none)
Group.new('cssBraces', c.aqua, c.none, none)
Group.new('cssSelectorOp', c.fg1, c.none, none)
Group.new('cssTagName', c.red, c.none, none)
Group.new('cssValueLength', c.blue, c.none, none)
Group.new('cssFunction', c.orange, c.none, none)
Group.new('cssFunctionName', c.orange, c.none, none)
Group.new('cssClassName', c.yellow, c.none, none)

Group.new('cssTextProp', c.purple, c.none, none)
Group.new('cssAnimationProp', c.purple, c.none, none)
Group.new('cssBorderProp', c.purple, c.none, none)
Group.new('cssIEUIProp', c.purple, c.none, none)
Group.new('cssMediaProp', c.purple, c.none, none)
Group.new('cssUIProp', c.purple, c.none, none)
Group.new('cssTransformProp', c.purple, c.none, none)
Group.new('cssTransitionProp', c.purple, c.none, none)
Group.new('cssPageProp', c.purple, c.none, none)
Group.new('cssPrintProp', c.purple, c.none, none)
Group.new('cssPositioningProp', c.purple, c.none, none)
Group.new('cssBoxProp', c.purple, c.none, none)
Group.new('cssGridProp', c.purple, c.none, none)
Group.new('cssFontDescriptorProp', c.purple, c.none, none)
Group.new('cssFlexibleBoxProp', c.purple, c.none, none)
Group.new('cssBorderOutlineProp', c.purple, c.none, none)
Group.new('cssBackgroundProp', c.purple, c.none, none)
Group.new('cssMarginProp', c.purple, c.none, none)
Group.new('cssListProp', c.purple, c.none, none)
Group.new('cssTableProp', c.purple, c.none, none)
Group.new('cssFontProp', c.purple, c.none, none)
Group.new('cssPaddingProp', c.purple, c.none, none)
Group.new('cssDimensionProp', c.purple, c.none, none)
Group.new('cssRenderProp', c.purple, c.none, none)
Group.new('cssColorProp', c.purple, c.none, none)
Group.new('cssGeneratedContentProp', c.purple, c.none, none)

Group.new('cssDefinition', c.fg1, c.none, none)
Group.new('cssAttrRegion', c.fg1, c.none, none)
Group.new('cssTextAttr', c.fg1, c.none, none)
Group.new('cssAnimationAttr', c.fg1, c.none, none)
Group.new('cssBorderAttr', c.fg1, c.none, none)
Group.new('cssMultiColumnAttr', c.fg1, c.none, none)
Group.new('cssCascadeAttr', c.fg1, c.none, none)
Group.new('cssCommonAttr', c.fg1, c.none, none)
Group.new('cssIEUIAttr', c.fg1, c.none, none)
Group.new('cssMediaAttr', c.fg1, c.none, none)
Group.new('cssUIAttr', c.fg1, c.none, none)
Group.new('cssTransformAttr', c.fg1, c.none, none)
Group.new('cssTransitionAttr', c.fg1, c.none, none)
Group.new('cssPageAttr', c.fg1, c.none, none)
Group.new('cssPrintAttr', c.fg1, c.none, none)
Group.new('cssPositioningAttr', c.fg1, c.none, none)
Group.new('cssBoxAttr', c.fg1, c.none, none)
Group.new('cssFontDescriptorAttr', c.fg1, c.none, none)
Group.new('cssFlexibleBoxAttr', c.fg1, c.none, none)
Group.new('cssBorderOutlineAttr', c.fg1, c.none, none)
Group.new('cssBackgroundAttr', c.fg1, c.none, none)
Group.new('cssMarginAttr', c.fg1, c.none, none)
Group.new('cssListAttr', c.fg1, c.none, none)
Group.new('cssTableAttr', c.fg1, c.none, none)
Group.new('cssFontAttr', c.fg1, c.none, none)
Group.new('cssPaddingAttr', c.fg1, c.none, none)
Group.new('cssDimensionAttr', c.fg1, c.none, none)
Group.new('cssRenderAttr', c.fg1, c.none, none)
Group.new('cssColorAttr', c.fg1, c.none, none)
Group.new('cssGeneratedContentAttr', c.fg1, c.none, none)
Group.new('cssColor', c.blue, c.none, none)

-- HTML
Group.new('htmlTag', c.aqua, c.none, none)
Group.new('htmlEndTag', c.aqua, c.none, none)
Group.new('htmlTagName', c.red, c.none, none)
Group.new('htmlArg', c.purple, c.none, italic)
Group.new('htmlScriptTag', c.aqua, c.none, none)
Group.new('htmlTagN', c.aqua, c.none, none)
Group.new('htmlSpecialTagName', c.red, c.none, none)
Group.new('htmlSpecialChar', c.aqua, c.none, none)
Group.new('htmlLink', c.orange, c.none, ul)
Group.new('htmlBold', c.fg1, c.bg0, bold)
Group.new('htmlBoldUnderline', c.fg1, c.bg0, bold + ul)
Group.new('htmlBoldItalic', c.fg1, c.bg0, bold + italic)
Group.new('htmlItalic', c.fg1, c.bg0, italic)
Group.new('htmlUnderline', c.fg1, c.bg0, ul)
Group.new('htmlUnderlineItalic', c.fg1, c.bg0, ul + italic)

-- JavaScript
Group.new('javaScriptIdentifier', c.purple, c.none, none)
Group.new('javaScriptMember', c.blue, c.none, none)
Group.new('javaScriptNumber', c.purple, c.none, none)
Group.new('javaScriptNull', c.purple, c.none, none)
Group.new('javaScriptReserved', c.purple, c.none, none)
Group.new('javaScriptStatement', c.purple, c.none, none)
Group.new('jsClassFuncName', c.blue, c.none, none)
Group.new('jsClassKeyword', c.aqua, c.none, none)
Group.new('jsExtendsKeyword', c.aqua, c.none, none)
Group.new('jsExportDefault', c.aqua, c.none, none)
Group.new('jsTaggedTemplate', c.blue, c.none, none)
Group.new('jsTemplateBraces', c.aqua, c.none, none)
Group.new('jsGlobalNodeObjects', c.fg1, c.none, none)
Group.new('jsGlobalObjects', c.yellow, c.none, none)
Group.new('jsObjectKey', c.purple, c.none, none)
Group.new('jsFunction', c.purple, c.none, italic)
Group.new('jsFuncCall', c.blue, c.none, none)
Group.new('jsReturn', c.purple, c.none, none)
Group.new('jsStorageClass', c.purple, c.none, italic)
Group.new('jsUndefined', c.blue, c.none, none)
Group.new('jsClassDefinition', c.yellow, c.none, none)
Group.new('jsArrowFuncArgs ', c.aqua, c.none, none)
Group.new('jsArrowFunction', c.fg1, c.none, none)
Group.new('jsClassMethodType', c.red, c.none, none)
Group.new('jsThis', c.purple, c.none, italic)
Group.new('Noise', c.aqua, c.none, none)

-- JSX
Group.new('jsxTagName', c.red, c.none, none)
Group.new('jsxPunct', c.aqua, c.none, none)
Group.new('jsxCloseString', c.aqua, c.none, none)
Group.new('jsxAttrib', c.purple, c.none, italic)
Group.new('jsxEqual', c.aqua, c.none, none)
Group.new('jsxBraces', c.orange, c.none, none)
Group.new('jsxComponentName', c.yellow, c.none, none)

-- TypeScript
Group.new('typescriptBraces', c.aqua, c.none, none)
Group.new('typescriptEndColons', c.aqua, c.none, none)
Group.new('typescriptExceptions', c.red, c.none, none)
Group.new('typescriptFuncKeyword', c.purple, c.none, italic)
Group.new('typescriptGlobalObjects', c.yellow, c.none, none)
Group.new('typescriptLabel', c.aqua, c.none, none)
Group.new('typescriptParens', c.aqua, c.none, none)
Group.new('typescriptReserved', c.aqua, c.none, none)
Group.new('typescriptStatement', c.red, c.none, none)
Group.new('typescriptStorageClass', c.purple, c.none, italic)
Group.new('typescriptType', c.yellow, c.none, none)
-- old
-- Group.new('typescriptAmbientDeclaration', c.aqua, c.none, none)
-- Group.new('typescriptAsyncFuncKeyword', c.aqua, c.none, none)
-- Group.new('typescriptArrowFunc', c.fg1, c.none, none)
-- Group.new('typescriptBOMWindowMethod', c.blue, c.none, none)
-- Group.new('typescriptBraces', c.aqua, c.none, none)
-- Group.new('typescriptCall', c.fg1, c.none, none)
-- Group.new('typescriptCastKeyword', c.aqua, c.none, none)
-- Group.new('typescriptClassKeyword', c.purple, c.none, italic)
-- Group.new('typescriptClassName', c.yellow, c.none, bold)
-- Group.new('typescriptDecorator', c.red, c.none, none)
-- Group.new('typescriptDefault', c.aqua, c.none, none)
-- Group.new('typescriptDOMNodeMethod', c.blue, c.none, none)
-- Group.new('typescriptExceptions', c.red, c.none, none)
-- Group.new('typescriptExport', c.aqua, c.none, none)
-- Group.new('typescriptFuncKeyword', c.purple, c.none, italic)
-- Group.new('typescriptGlobal', c.yellow, c.none, none)
-- Group.new('typescriptIdentifierName', c.blue, c.none, none)
-- Group.new('typescriptImport', c.aqua, c.none, none)
-- Group.new('typescriptInterfaceKeyword', c.red, c.none, none)
-- Group.new('typescriptMember', c.fg1, c.none, none)
-- Group.new('typescriptModule', c.aqua, c.none, none)
-- Group.new('typescriptNull', c.yellow, c.none, none)
-- Group.new('typescriptObjectLiteral', c.aqua, c.none, none)
-- Group.new('typescriptParens', c.aqua, c.none, none)
-- Group.new('typescriptStatementKeyword', c.purple, c.none, none)
-- Group.new('typescriptTemplateSB', c.aqua, c.none, none)
-- Group.new('typescriptTestGlobal', c.blue, c.none, none)
Group.new('typescriptTry', c.blue, c.none, none)
-- Group.new('typescriptVariable', c.purple, c.none, italic)

-- Elm
Group.new('elmAlias', c.red, c.none, none)
Group.new('elmBraces', c.aqua, c.none, none)
Group.new('elmCaseBlockDefinition', c.red, c.none, none)
Group.new('elmConditional', c.red, c.none, none)
Group.new('elmDelimiter', c.fg1, c.none, none)
Group.new('elmFuncName', c.purple, c.none, none)
Group.new('elmLetBlockDefinition', c.red, c.none, none)
Group.new('elmOperator', c.aqua, c.none, none)
Group.new('elmType', c.yellow, c.none, none)
Group.new('elmTypedef', c.red, c.none, none)

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

-- Django
Group.new('djangoArgument', c.fg1, c.none, none)
Group.new('djangoStatement', c.fg1, c.none, none)
Group.new('djangoTagBlock', c.fg1, c.none, none)
Group.new('djangoVarBlock', c.fg1, c.none, none)

-- Ruby
Group.new('rubyExceptionHandler', c.red, c.none, none)
Group.new('rubyHelper', c.fg1, c.none, none)
Group.new('rubyInterpolationDelimiter', c.aqua, c.none, none)
Group.new('rubyMagicComment', c.fg1, c.none, none)
Group.new('rubyStringDelimiter', c.green, c.none, none)

-- HCL
-- requires hashivim/vim-terraform
Group.new('hclBlockType', c.red, c.none, none)
Group.new('hclBraces', c.aqua, c.none, none)

-- JSON
Group.new('jsonBraces', c.fg1, c.none, none)
Group.new('jsonCommentError', c.gray, c.none, none)
Group.new('jsonKeyword', c.green, c.none, none)
Group.new('jsonNoQuotesError', c.gray, c.none, none)
Group.new('jsonQuote', c.green, c.none, none)
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
