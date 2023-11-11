return {{
    "stevearc/dressing.nvim",
    event = "VeryLazy"
}, {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("nvim-tree").setup {}
    end
}, {
    "rebelot/kanagawa.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme kanagawa]])
    end
}, {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
}, {"nvim-telescope/telescope-file-browser.nvim"}, {"nvim-lua/plenary.nvim"}, {
    'AckslD/muren.nvim',
    config = true
}, {
    "folke/zen-mode.nvim",
    opts = {}
}, {
    "folke/twilight.nvim",
    opts = {}
}, {
    "neovim/nvim-lspconfig",
    config = function()
        require("core.lsp")
    end
}, {
    "folke/neodev.nvim",
    opts = {}
}, {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        require("core.whichkey")
    end
},
{'matbme/JABS.nvim',
  opts = {
     -- Options for the main window
    position = {'center', 'top'}, -- position = {'<position_x>', '<position_y>'} | <position_x> left, center, right,
                                  --                                             <position_y> top, center, bottom
                                  -- Default {'right', 'bottom'}

    relative = 'editor', -- win, editor, cursor. Default win
    clip_popup_size = false, -- clips the popup size to the win (or editor) size. Default true

    width = 80, -- default 50
    height = 20, -- default 10
    border = 'single', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default shadow

    offset = { -- window position offset
        top = 2, -- default 0
        bottom = 2, -- default 0
        left = 2, -- default 0
        right = 2, -- default 0
    },

    sort_mru = true,
    split_filename = true, -- Split filename into separate components for name and path. Default false
    split_filename_path_width = 20,
    preview_position = 'left', -- top, bottom, left, right. Default top
    preview = {
        width = 40, -- default 70
        height = 60, -- default 30
        border = 'single', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default double
    },

    -- Default highlights (must be a valid :highlight)
    highlight = {
        current = "Title", -- default StatusLine
        hidden = "StatusLineNC", -- default ModeMsg
        split = "WarningMsg", -- default StatusLine
        alternate = "StatusLine" -- default WarningMsg
    },

    -- Default symbols
    symbols = {
        current = "C", -- default 
        split = "S", -- default 
        alternate = "A", -- default 
        hidden = "H", -- default ﬘
        locked = "L", -- default 
        ro = "R", -- default 
        edited = "E", -- default 
        terminal = "T", -- default 
        default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
        terminal_symbol = ">_" -- Filetype icon for a terminal split. Default 
    },

    -- Keymaps
    keymap = {
        close = "<c-d>", -- Close buffer. Default D
        jump = "<space>", -- Jump to buffer. Default <cr>
        h_split = "h", -- Horizontally split buffer. Default s
        v_split = "v", -- Vertically split buffer. Default v
        preview = "p", -- Open buffer preview. Default P
    },

    -- Whether to use nvim-web-devicons next to filenames
    use_devicons = false -- true or false. Default true
  }
}
} -- EOF
