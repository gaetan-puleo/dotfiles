return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
  ---@type snacks.Config
    bigfile = { enabled = true },
    image = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
  },
}
