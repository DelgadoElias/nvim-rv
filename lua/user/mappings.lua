local wk = require("which-key")
wk.add({
  -- Oil configs
  { "<leader>O", name = "Oil" },
  { "<leader>Oo", ":Oil<CR>", desc = "Open Oil" },
  { "<leader>Oa", ":Oil -float<CR>", desc = "Open Oil in float" },
  { "<leader>Oc", ":Oil -float %:p:h<CR>", desc = "Open Oil in float with current file path" },
  { "<leader>Oe", ":Oil -float %:p:h<CR>", desc = "Open Oil in float with current file path" }, 

  -- Copilot chat configuration
  { "<leader>c", name = "Copilot" },
  { "<leader>cc", ":CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
  { "<leader>cq", ":CopilotChatQuit<CR>", desc = "Quit Copilot Chat" },
  { "<leader>cr", ":CopilotChatReset<CR>", desc = "Reset Copilot Chat" },

  -- Utils
  { "<leader>f", group = "file" },
  { "<leader>fd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition file" },

  -- Conform
  { "<leader>f", name = "Format" },
  { "<leader>ff", ":ConformFormat<CR>", desc = "Format file" },
  { "<leader>fF", ":ConformFormatWrite<CR>", desc = "Format and write file" },

  -- Surround
  { "<leader>s", name = "Surround" },
  { "<leader>sA", desc = "Add surrounding to entire line" },
  { "<leader>sS", desc = "Surround entire line" },
  { "<leader>sa", desc = "Add surrounding to text object" },
  { "<leader>sd", desc = "Delete surrounding" },
  { "<leader>sr", desc = "Replace surrounding" },
  { "<leader>ss", desc = "Surround current text object" },
  { "<leader>sy", desc = "Add surrounding with motion" },

  -- Pomodoro Sessions
  { "<leader>s", name = "Session & Pomodoro" },
  { "<leader>sp", ":TimerSession pomodoro<CR>", desc = "Start Pomodoro session" },
  { "<leader>se", ":TimerStop<CR>", desc = "Stop Pomodoro session" },

  -- Terminal added
  { "<leader>t", name = "Terminal" },
  { "<leader>ta", ":Atac<CR>", desc = "Atac Postman terminal" },
  { "<leader>tt", "<cmd>lua global_note.toggle_note()<CR>", desc = "Toggle global note" },

 -- Overseer
  { "<leader>z", name = "Overseer" },
  { "<leader>zt", ":OverseerToggle<CR>", desc = "Toggle Task List" },
  { "<leader>zr", ":OverseerRun<CR>", desc = "Run Task" },
  { "<leader>zc", ":OverseerClose<CR>", desc = "Close Task List" }
})

