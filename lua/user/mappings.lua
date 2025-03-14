local wk = require("which-key")
wk.add({
  { "<leader>O", name = "Oil" },
  { "<leader>Oo", ":Oil<CR>", desc = "Open Oil" },
  
  { "<leader>f", group = "file" },  -- grupo
  { "<leader>fd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition file" },
  
  { "<leader>s", name = "Surround" },
  { "<leader>sA", desc = "Add surrounding to entire line" },
  { "<leader>sS", desc = "Surround entire line" },
  { "<leader>sa", desc = "Add surrounding to text object" },
  { "<leader>sd", desc = "Delete surrounding" },
  { "<leader>sr", desc = "Replace surrounding" },
  { "<leader>ss", desc = "Surround current text object" },
  { "<leader>sy", desc = "Add surrounding with motion" },

 { "<leader>s", name = "Session & Pomodoro" },
  { "<leader>sp", ":TimerSession pomodoro<CR>", desc = "Start Pomodoro session" },
  { "<leader>se", ":TimerStop<CR>", desc = "Stop Pomodoro session" },

  { "<leader>t", name = "Terminal" },
  { "<leader>ta", ":Atac<CR>", desc = "Atac Postman terminal" },
  { "<leader>tt", "<cmd>lua global_note.toggle_note()<CR>", desc = "Toggle global note" }
})

