-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.opt

-- 高亮当前行
vim.wo.cursorline = true

-- 启用鼠标支持
vim.o.mouse = 'a'

opt.relativenumber = false

opt.shiftwidth = 4

vim.g.autoformat = false

vim.cmd [[set clipboard=unnamedplus]]
vim.cmd [[set clipboard+=unnamed]]
