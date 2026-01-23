local is_mac = vim.fn.has("macunix") == 1
local mod = is_mac and "D" or "M"

return {
    "knubie/vim-kitty-navigator",
    build = "cp ./*.py ~/.config/kitty/",
    keys = {
        { "<" .. mod .. "-h>", ":KittyNavigateLeft<CR>", mode = "n", desc = "Navigate left", silent = true },
        { "<" .. mod .. "-j>", ":KittyNavigateDown<CR>", mode = "n", desc = "Navigate down", silent = true },
        { "<" .. mod .. "-k>", ":KittyNavigateUp<CR>", mode = "n", desc = "Navigate up", silent = true },
        { "<" .. mod .. "-l>", ":KittyNavigateRight<CR>", mode = "n", desc = "Navigate right", silent = true },
    },
}
