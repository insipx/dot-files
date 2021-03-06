require('plugins')
require('utils')
require('keybinds')

local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

cmd 'colorscheme dracula'
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.hidden = true
opt.hlsearch = true
opt.backspace = {'indent', 'eol', 'start' }
opt.shiftwidth = 2
opt.guifont = 'PragmataPro Mono Liga:h10'
opt.laststatus = 2

-- Disable some unused built-in Neovim plugins
vim.g.loaded_man = false
vim.g.loaded_gzip = false
vim.g.loaded_netrwPlugin = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false

g.mapleader = ' '
g.nocompatible = true

------------------------ MAPPINGS --------------------------------
map('i', 'jk', '<esc>') -- remap esc
map('', '<leader>ic', '"+y') -- Copy to clipboard in normal, visual, select and operator modes

-- Git
-- TODO



