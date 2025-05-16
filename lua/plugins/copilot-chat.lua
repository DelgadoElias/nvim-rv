-- Copilot chat configuration
-- As a separate plugin

if false then
  return {}
end



return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- Copilot base plugin
    { "nvim-lua/plenary.nvim" },  -- Required by CopilotChat
  },
  event = "VeryLazy", -- Lazy load when needed
  opts = {
    show_help = true,
    auto_follow_cursor = true,
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
    { "<leader>cr", "<cmd>CopilotChatReset<CR>", desc = "Reset Chat" },
    { "<leader>cq", "<cmd>CopilotChatQuit<CR>", desc = "Quit Chat" },
  },
}

