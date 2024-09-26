return {
    "NachoNievaG/atac.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    local dir = "~/atac-nvim"

    -- Expand routing
    dir = vim.fn.expand(dir)

    -- Create atact-nvim directory if not exists
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end

    -- Confirue atac.nvim plugin
    require("atac").setup({
      dir = dir, -- Use expanded routing
    })
  end,
}