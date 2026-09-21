-- jk works as <Esc> in insert mode 
vim.keymap.set('i', 'jk', '<Esc>')

-- Move cursor in <Inser> mode
vim.keymap.set('i', '<C-h>', '<Esc>i')
vim.keymap.set('i', '<C-k>', '<Esc><Up>a')
vim.keymap.set('i', '<C-j>', '<Esc><Down>a')
vim.keymap.set('i', '<C-l>', '<Esc><Right>a')

-- save, quit, force quit and restart
vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>W', ':wa<cr>')
vim.keymap.set('n', '<leader>q', ':q<cr>')
vim.keymap.set('n', '<leader>Q', ':qa!<cr>')
vim.keymap.set('n', '<leader><f5>', ':restart<cr>')

-- Yank to end of the line
vim.keymap.set('n', 'Y', 'y$', { desc = "Yank to end of the line"})

-- Deleting
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Smoother Scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Move lines up/down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>>==', { desc = "Move line down"})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>>==', { desc = "Move line down"})

-- Move selection up/down
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = "Move selection down"})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = "Move selection up"})

-- Indenting in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Navigation
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

-- Buffer navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = "Buffer Next" })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = "Buffer previous" })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = "Delete Buffer" })

-- Splitting
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>ss', ':split<CR>')

-- Window resizing
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Open file manager
vim.keymap.set('n', '<leader>e', ':Ex<CR>')

-- Copy full file path
vim.keymap.set('n', '<leader>pa', function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("file:", path)
end)

-- Better movement in wrapped text
vim.keymap.set('n', 'j', function()
  return vim.v.count == 0 and 'gj' or 'j'
end, {expr = true, silent = true, desc = "Down (wrap-aware)"})

vim.keymap.set('n', 'k', function()
  return vim.v.count == 0 and 'gk' or 'k'
end, {expr = true, silent = true, desc = "Up (wrap-aware)"})
