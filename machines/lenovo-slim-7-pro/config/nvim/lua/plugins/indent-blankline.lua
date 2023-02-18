-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "space: "

-- require("indent_blankline").setup {
--   -- char = "",
--   -- char_highlight_list = {
--   --     "IndentBlanklineIndent1",
--   --     "IndentBlanklineIndent2",
--   -- },

--   -- space_char_highlight_list = {
--   --   "IndentBlanklineIndent1",
--   --   "IndentBlanklineIndent2",
--   -- },

--   -- show_trailing_blankline_indent = false,

--   show_end_of_line = true,
--   space_char_blankline = " ",
--   show_current_context = true,
--   show_current_context_start = true,
-- }

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f7768e gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ff9e64 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#9ece6a gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#9ece6a gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#7dcfff gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#bb9af7 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space: "
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  -- char_highlight_list = {
  --     -- "IndentBlanklineIndent1",
  --     -- "IndentBlanklineIndent2",
  --     -- "IndentBlanklineIndent3",
  --     -- "IndentBlanklineIndent4",
  --     -- "IndentBlanklineIndent5",
  --     -- "IndentBlanklineIndent6",
  -- },
}
