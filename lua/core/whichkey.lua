local builtin = require('telescope.builtin')
local wk = require("which-key")

wk.register({
    f = {
        name = "Find / Replace",
        f = {builtin.find_files, "Find Files"},
        g = {builtin.live_grep, "Live Grep"},
        b = {builtin.buffers, "Buffers"},
        h = {builtin.help_tags, "Help"},
        t = {':MurenToggle top_left 5 10<CR>', "Toggle UI"},
    },
    z = {
        name = "Zen",
        m = {":ZenMode<CR>", "Zen Mode"}
    },
    l = {
        name = "LSP",
            e = {vim.diagnostic.open_float, "Show Error"},
            d = {vim.diagnostic.goto_prev, "Previous Error"},
            f = {vim.diagnostic.goto_next, "Next Error"},
            q = {vim.diagnostic.setloclist, "Set Location List"},
    }
   
}, {
    prefix = "<leader>"
})
