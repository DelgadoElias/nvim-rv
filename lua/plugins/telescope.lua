
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",         -- ignore all "node_modules" folders
        "%.lock",               -- ignore .lock files (e.g. yarn.lock)
        "package%-lock%.json",  -- ignore package-lock.json (Lua pattern requires escaping "-")
        "%.next",               -- ignore .next folder (Next.js)
        "%.angular",            -- ignore .angular folder (Angular)
      },
      vimgrep_arguments = {
        "rg",                   -- use ripgrep as the search backend
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",             -- include hidden files (like .env, .gitignore, etc.)
        "--glob=!**/node_modules/*", -- exclude node_modules from live grep
        "--glob=!**/dist/*",         -- exclude dist folders (optional)
      },
    },
    pickers = {
      find_files = {
        hidden = true, -- 👈 include hidden files like .env, .gitignore, etc.
      },
    },
  },
}

