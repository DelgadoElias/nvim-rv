

local wk = require("which-key")

wk.add({
  ["<leader>t"] = { name = "Terminal" },
  ["<leader>ta"] = { ":Atac", "Atac Postman terminal" },
  ["<leader>tt"] = { "<cmd>lua global_note.toggle_note()<CR>", "Toggle global note" },

  ["<leader>s"] = { name = "Surround" },
  ["<leader>ss"] = { "Surround current text object" },
  ["<leader>sS"] = { "Surround entire line" },
  ["<leader>sd"] = { "Delete surrounding" },
  ["<leader>sr"] = { "Replace surrounding" },
  ["<leader>sa"] = { "Add surrounding to text object" },
  ["<leader>sA"] = { "Add surrounding to entire line" },
  ["<leader>sy"] = { "Add surrounding with motion" },

  ["<leader>O"] = { name = "Oil" },
  ["<leader>Oo"] = { ":Oil<CR>", "Open Oil" }, 

  ["<leader>fd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition file" },
}, { prefix = "<leader>" })  

