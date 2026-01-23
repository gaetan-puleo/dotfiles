local is_mac = vim.fn.has("macunix") == 1
local mod = is_mac and "D" or "M"

return {
    "MunsMan/kitty-navigator.nvim",
    opts = {
        keybindings = {
            left = "<" .. mod .. "-h>",
            down = "<" .. mod .. "-j>",
            up = "<" .. mod .. "-k>",
            right = "<" .. mod .. "-l>",
        },
    },
}
