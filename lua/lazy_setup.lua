require("lazy").setup({{
    "AstroNvim/AstroNvim",
    version = "^4",
    import = "astronvim.plugins",
    opts = {
        mapleader = " ",
        maplocalleader = ",",
        icons_enabled = true,
        pin_plugins = nil,
        update_notifications = true
    }
}, {
    import = "community"
}, {
    "NachoNievaG/atac.nvim",
    dependencies = {"akinsho/toggleterm.nvim"},
    config = function()
        -- Verify atac folder exists
        local dir = vim.fn.expand("~/atac")
        -- If it not exists, it will create the folder
        if vim.fn.isdirectory(dir) == 0 then
            vim.fn.mkdir(dir, "p")
        end

        require("atac").setup({
            dir = dir -- Use atac folder
        })
    end
}, {
    import = "plugins"
}, {"kyazdani42/nvim-web-devicons"}, {
    "goolord/alpha-nvim",
    dependencies = {'kyazdani42/nvim-web-devicons'},
    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'

        -- Customize dashboard system
        dashboard.section.header.val = {"RRRRRRRRRRRRRRRRR       VVVVVVVV           VVVVVVVV",
                                        "R::::::::::::::::R      V::::::V           V::::::V",
                                        "R::::::RRRRRR:::::R     V::::::V           V::::::V",
                                        "RR:::::R     R:::::R    V::::::V           V::::::V",
                                        "  R::::R     R:::::R    V.:::::V           V:::::.V ",
                                        "  R::::R     R:::::R     V.:::::V         V:::::.V  ",
                                        "  R::::RRRRRR:::::R       V.:::::V       V:::::.V   ",
                                        "  R:::::::::::::RR         V.:::::V     V:::::.V    ",
                                        "  R::::RRRRRR:::::R         V.:::::V   V:::::.V     ",
                                        "  R::::R     R:::::R         V.:::::V V:::::.V      ",
                                        "  R::::R     R:::::R          V.:::::V:::::.V       ",
                                        "  R::::R     R:::::R           V.:::::::::.V        ",
                                        "RR:::::R     R:::::R            V.:::::::.V         ",
                                        "R::::::R     R:::::R             V.:::::.V          ",
                                        "R::::::R     R:::::R              V.:::.V           ",
                                        "RRRRRRRR     RRRRRRR                VVV            "}

        -- Configura los grupos de resaltado
        vim.api.nvim_command('highlight AlphaHeader guifg=#ff0000')

        dashboard.section.header.opts = {
            position = "center",
            hl = "AlphaHeader"
        }

        alpha.setup(dashboard.config)
    end
}}, {
    install = {
        colorscheme = {"astrodark", "habamax"}
    },
    ui = {
        backdrop = 0
    },
    performance = {
        rtp = {
            disabled_plugins = {"gzip", "netrwPlugin", "tarPlugin", "tohtml", "zipPlugin"}
        }
    }
} --[[@as LazyConfig]] )
