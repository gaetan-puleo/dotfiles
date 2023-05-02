local hl = vim.api.nvim_set_hl

--
-- EDITOR UI
--

hl(0, "Normal" , { ctermfg = 'White',  ctermbg = 'Black', bg = editor.background }) --background

hl(0, "EndOfBuffer" , { fg = editor.background }) -- ~ sign after the end of the buffer / file

hl(0, "SignColumn" , { bg = editor.gutterBg}) -- gutter
hl(0, "LineNr" , { fg = editor.lineGutter, bg = editor.gutterBg }) -- line numbre

hl(0, "CursorLineNr" , { fg = white,  bold = true }) -- gutter line
hl(0, "CursorLine" , { bg = editor.activeCursorLine}) -- gutter line

hl(0, "StatusLine" , { bg = editor.statusBg }) -- status line active window
hl(0, "StatusLineNC" , { bg = editor.statusNotFocusBg }) -- status line active window

hl(0, "VertSplit" , { fg = editor.backgroundDarker }) -- vertical separator between split

hl(0, "Pmenu" , { bg = editor.pMenu }) -- vertical separator between split

hl(0, "PmenuSel" , { bg = editor.pMenuSel }) --background
--hl(0, "PmenuSel" , { bg = "#ff0000" }) -- vertical separator between split



-- 
-- TEXT
--

hl(0, "NvimParenthesis", { fg = text.parenthesis}) -- 
hl(0, "MatchParen", { fg = text.matchParenFg, bg = text.matchParenBg, italic = true, bold = true })
--
--  Basic Language Support vim
--
--hl(0, "Boolean" , { italic = true })
--hl(0, "String", { fg = syntax.string })
--hl(0, "Comment", { fg = syntax.comment, italic = true })
--hl(0, "Conditional", { fg = syntax.controlFlow, italic = true, bold = true })
--hl(0, "Repeat", { fg = syntax.controlFlow, italic = true, bold = true })


--
--  Basic Language Support neovim
--
hl(0, "@comment", { fg = syntax.comment, italic = true })

hl(0, "@constant", { fg = syntax.constant, })
hl(0, "@constant.builtin", { fg = syntax.constant, italic = true })

hl(0, "@keyword", { fg = syntax.controlFlow})
hl(0, "@include", { fg = syntax.controlFlow})
hl(0, "@repeat", { fg = syntax.controlFlow})
hl(0, "@conditional", { fg = syntax.controlFlow})


hl(0, "@variable", { fg = syntax.variable, bold = true })
hl(0, "@variable.builtin", { fg = syntax.variable})
hl(0, "@number", { fg = syntax.number, bold = true })
hl(0, "@boolean", { fg = syntax.boolean, italic = true })
hl(0, "@string", { fg = syntax.string, italic = true })
hl(0, "@operator", { fg = syntax.operator, })


hl(0, "@text.uri", { fg = syntax.string })
hl(0, "@text.title", { fg = syntax.string })

hl(0, "@punctuation", { fg = text.parenthesis, })
hl(0, "@type", { fg = syntax.type })

hl(0, "@function", { fg = syntax.fn })
hl(0, "@function.call", { fg = syntax.fn })
hl(0, "@method.call", { fg = syntax.fn })
hl(0, "@constructor", { fg = syntax.constructor })
hl(0, "@conceal", { fg = syntax.conceal })
hl(0, "@field", { fg = syntax.conceal })

hl(0, "@property", { fg = syntax.property })
hl(0, "@parameter", { fg = syntax.params })



hl(0, "@tag", { fg = syntax.htmlTagName})
hl(0, "@tag.delimiter", { fg = syntax.htmlChevron})
hl(0, "@tag.attribute", { fg = syntax.htmlAttribute})
-- js
-- hl(0, "JavaScriptBraces", { link = 'NvimParenthesis'})

-- HTML
hl(0, "htmlTagName", { fg = syntax.htmlTagName})
hl(0, "htmlTag", { fg = syntax.htmlChevron})
hl(0, "htmlEndTag", { fg = syntax.htmlChevron})
hl(0, "htmlArg", { fg = syntax.htmlAttribute})
hl(0, "htmlLink", { fg = syntax.htmlText})
hl(0, "htmlH1", { fg = syntax.htmlText})

-- CSS
hl(0, "CSSBraces", { link = NvimParenthesis } )
hl(0, "cssAttrComma", { fg = text.noise })

hl(0, "cssPseudoClass", { fg = syntax.cssPseudoClass})
hl(0, "cssPseudoClassId", { fg = syntax.cssPseudoClass})
hl(0, "cssPseudoClassFn", { fg = syntax.cssPseudoClass})

hl(0, "cssClassName", { fg = syntax.cssClassName})
hl(0, "cssClassNameDot", { fg = syntax.cssClassName })
hl(0, "cssIdentifier", { fg = syntax.cssId})

