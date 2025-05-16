
---@type LazySpec
return {
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end
  },  
  -- Custom alpha-nvim config
  {
    "goolord/alpha-nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      -- Customized dashboard entry
      dashboard.section.header.val = {
        "RRRRRRRRRRRRRRRRR       VVVVVVVV           VVVVVVVV",
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
        "RRRRRRRR     RRRRRRR                VVV            ",
        "                                                   ",
        "  Acumuladores R.V - Posadas, Misiones, Argentina  "
      }

      -- Configure alpha headers
      vim.api.nvim_command('highlight AlphaHeader guifg=#E33401')

      dashboard.section.header.opts = {
        position = "center",
        hl = "AlphaHeader"
      }

      alpha.setup(dashboard.config)
    end
  },
  -- Disable better-scape
  {
    "max397574/better-escape.nvim",
    enabled = false
  },
  
  -- Additional config
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end
  },
  
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules({
        Rule("$", "$", { "tex", "latex" }) -- don't add a pair if the next character is %
        :with_pair(cond.not_after_regex "%%") -- don't add a pair if the previous character is xxx
        :with_pair(cond.not_before_regex("xxx", 3)) -- don't move right when repeat character
        :with_move(cond.none()) -- don't delete if the next character is xx
        :with_del(cond.not_after_regex "xx") -- disable adding a newline when you press <cr>
        :with_cr(cond.none())}, -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim"))
    end
  }
}

