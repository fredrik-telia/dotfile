-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins
require('plugins')

-- Key mappings
require('keymappings')

-- Setup Lua language server using submodule
-- require('lsp_lua')

-- Another option is to groups configuration in one folder
require('config')

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use

-- require'lspconfig'.tsserver.setup{}
