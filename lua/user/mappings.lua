local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    t = {
      name = "Terminal",
      a = { ":Atac", "Atac Postman terminal"}
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
    o = { ":Oil<CR>", "Open Oil" },                  -- Open oil plugin
  },
  },
}) 