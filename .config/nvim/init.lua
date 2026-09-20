-- *NEOVIM CONFIG* --

-- Set leader key to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Plugins BEGIN
vim.pack.add({
  'https://github.com/gbprod/nord.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
  }) -- Plugins END

-- Require rest of the configuration files from lua directory
require('options')
require('keybindings')
require('autocommands')
require('colorscheme')
require('statusline')

