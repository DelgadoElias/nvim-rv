-- We can add all the features for angular if the user is in an angular project
local function is_angular_project()
  local current_dir = vim.fn.getcwd()
  -- Route 2 angular.json
  local angular_json_path = current_dir .. "/angular.json"
  -- Verify if angular.json exists
  return vim.fn.filereadable(angular_json_path) == 1
end

-- If we are in an angular project we can define angular_schematics prompts
if is_angular_project() then
  -- Define prompt schema
  _G.angular_schematics = function()
    local choices = {
      { label = "Create component", command = "ng g component " },
      { label = "Create service", command = "ng g service " },
      { label = "Create module", command = "ng g module " },
      { label = "Create resolver", command = "ng g resolver " },
    }

    -- Open a prompt to select shcema in window
    require("telescope.pickers").new({}, {
      prompt_title = "Angular Schematics",
      finder = require("telescope.finders").new_table({
        results = choices,
        entry_maker = function(entry)
          return {
            value = entry,
            display = entry.label,
            ordinal = entry.label,
          }
        end,
      }),
      sorter = require("telescope.config").values.generic_sorter({}),
      attach_mappings = function(_, map)
        map("i", "<CR>", function(prompt_bufnr)
          local selection = require("telescope.actions.state").get_selected_entry()
          require("telescope.actions").close(prompt_bufnr)
          local cmd = selection.value.command
          vim.fn.inputsave()
          local input = vim.fn.input("Filename: ")
          vim.fn.inputrestore()
          vim.cmd("!" .. cmd .. input)
        end)
        return true
      end,
    }):find()
  end

  -- Map this command to add angular schematics keymapping
  vim.api.nvim_set_keymap("n", "<leader>as", ":lua angular_schematics()<CR>", { noremap = true, silent = true })

  -- Register keymap in which-key to better labelling style
  local wk = require("which-key")
  wk.register({
      ["<leader>"] = {
    a = {
      name = "Angular",
      s = { ":lua angular_schematics()<CR>", "Generate Angular Schematic File" },
    },
  },
  })
end
