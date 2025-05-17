if false then return {} end

-- Overseer.nvim configuration
-- This plugin is used for running tasks and managing them in Neovim
--
-- @type LazySpec

return {
  "stevearc/overseer.nvim",
  opts = {
    templates = { "builtin" }, -- Use built-in templates
    task_list = {
      default_action = "open",
   },
  },
}
