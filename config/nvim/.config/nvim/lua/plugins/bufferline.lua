return {
  'akinsho/bufferline.nvim',
  enabled = true,
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    -- local mocha = require("catppuccin.palettes").get_palette "mocha"

    require("bufferline").setup{
      -- highlights = {
      --   tab = {
      --     bg = mocha.mantle
      --   },
      --   fill = {
      --     bg = mocha.mantle
      --   },
      --   separator = {
      --     bg = mocha.mantle
      --   },
      --   offset_separator = {
      --     bg = mocha.mantle
      --   },
      -- },
      options = {
        separator_style = 'thin',
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
          }
        }
      }
    }
  end
}
