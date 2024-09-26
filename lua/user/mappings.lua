local wk = require "which-key"

wk.register {
  ["<leader>"] = {
    t = {
      name = "Terminal",
      a = { ":Atac", "Atac Postman terminal" },
      t = { "<cmd>lua global_note.toggle_note()<CR>", "Toggle global note" },
    },
    s = {
      name = "Surround",
      ["s"] = { "Surround current text object" },
      ["S"] = { "Surround entire line" },
      ["d"] = { "Delete surrounding" },
      ["r"] = { "Replace surrounding" },
      ["a"] = { "Add surrounding to text object" },
      ["A"] = { "Add surrounding to entire line" },
      ["y"] = { "Add surrounding with motion" },
    },
    O = {
      name = "Oil",
      o = { ":Oil<CR>", "Open Oil" }, -- Open oil plugin
    },
    f = {
      d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition file" },
    },
  },
}
