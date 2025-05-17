if false then return {} end

-- Conform.nvim configuration
-- -- This plugin is used for formatting files in Neovim

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
      scss = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
      yaml = { "yamlfmt" },
      lua = { "stylua" },
      sh = { "shfmt" },
      java = { "google-java-format" }, -- o "java-format" si preferís
    },
    format_on_save = {
      timeout_ms = 3000,
      lsp_fallback = true,
    },
  },
}
