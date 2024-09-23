-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
    -- stylua: ignore
    vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
                   lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
    -- stylua: ignore
    vim.api.nvim_echo({{("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg"},
                       {"Press any key to exit...", "MoreMsg"}}, true, {})
    vim.fn.getchar()
    vim.cmd.quit()
end



-- Minimal setup
require "lazy_setup"
require "polish"

-- Personal mappings
require("user.mappings")
require("web.angular")

-- Another plugins to configure
require("oil").setup()



-- require xclip to enable this feature
vim.opt.clipboard = "unnamedplus"

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE")
vim.cmd("hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE")
vim.cmd("hi CursorLineNr cterm=NONE ctermbg=NONE ctermbg=NONE")
vim.cmd("hi clear LineNr")
vim.cmd("hi clear SignColumn")
vim.cmd("hi clear StatusLine")
