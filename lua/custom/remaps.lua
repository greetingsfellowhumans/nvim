local map = vim.api.nvim_set_keymap
local opts = {noremap = true }
map('i', 'jk', '<Esc>', opts)
map('n', ';', ':', opts)

-- Navigate windows with Ctrl + hjkl
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Toggle CHADtree
map('n', '<C-n>', ':CHADopen<cr>', opts)
