return {
  "lukas-reineke/indent-blankline.nvim" ,
  config = function ()
    vim.g["indent_blankline_filetype_exclude"] = {
      "dashboard"

    }
    vim.opt.termguicolors = true
    vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1a1b26 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent2 guibg=#24283b gui=nocombine]]

    require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}
  end
}
