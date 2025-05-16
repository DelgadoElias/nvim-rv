-- Copilot config - If you want to use Copilot, you need to install the Copilot plugin.
-- If you don't want to use Copilot, you can set the following if to true
if false then
  return {}
end

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot", -- lazy-load when using :Copilot command
  event = "InsertEnter", -- or load on InsertEnter
  opts = {
    suggestion = {
      enabled = true,          -- enable inline suggestions
      auto_trigger = true,     -- suggestions appear automatically
      debounce = 75,           -- delay before suggestion shows
      keymap = {
        accept = "<C-l>",      -- accept suggestion
        next = "<C-]>",        -- next suggestion
        prev = "<C-[>",        -- previous suggestion
        dismiss = "<C-\\>",    -- dismiss suggestion
      },
    },
    panel = {
      enabled = true,          -- enable Copilot suggestion panel
      auto_refresh = true,
      keymap = {
        open = "<leader>cp",   -- open panel
        accept = "<CR>",       
        refresh = "gr",
        next = "J",
        prev = "K",
      },
    },
    filetypes = {
      markdown = true,
      help = false,
      gitcommit = true,
      yaml = true,
    },
  },
  config = function(_, opts)
    require("copilot").setup(opts)
  end,
}
