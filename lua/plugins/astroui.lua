

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "RV ⠋",
      LSPLoading2 = "RV ⠙",
      LSPLoading3 = "RV ⠹",
      LSPLoading4 = "RV ⠸",
      LSPLoading5 = "RV ⠼",
      LSPLoading6 = "RV ⠴",
      LSPLoading7 = "RV ⠦",
      LSPLoading8 = "RV ⠧",
      LSPLoading9 = "RV ⠇",
      LSPLoading10 = "RV ⠏",
    },
  },
}
