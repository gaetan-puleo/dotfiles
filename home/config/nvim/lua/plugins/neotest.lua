require('neotest').setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = "npm test --",
      -- jestConfigFile = "custom.jest.config.ts",
      -- env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
  }
})

local map = vim.api.nvim_set_keymap



map('n', "<leader>tn", [[<cmd>lua require("neotest").run.run()<CR>]], { noremap = true, silent = true})
map('n', "<leader>tf", [[<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>]], { noremap = true, silent = true})
