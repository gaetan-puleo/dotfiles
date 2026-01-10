
return {
  'stevearc/conform.nvim',
  config = function ()
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end
    })
    require("conform").setup({
      formatters_by_ft = {
        -- Use a sub-list to run only the first available formatter
        javascript = {  "biome", "prettier", stop_after_first = true  },
        javascriptreact = {  "biome", "prettier", stop_after_first = true  },
        typescript = {  "biome", "prettier", stop_after_first = true  },
        typescriptreact = {  "biome", "prettier", stop_after_first = true  },
        css = {  "biome", "prettier", stop_after_first = true  },
        html = {  "biome", "prettier", stop_after_first = true  },
        astro = {  "biome", "prettier", stop_after_first = true  },
      },
    })
  end
}
