return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,      -- Show hidden files
        hide_dotfiles = false,  -- Don't hide dotfiles like .env
        hide_gitignored = false, -- Don't hide files from .gitignore
      },
    },
  },
}
