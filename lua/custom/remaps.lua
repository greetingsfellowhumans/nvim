local map = vim.api.nvim_set_keymap
local opts = {noremap = true }
vim.g.mapleader = '`'

map('i', 'jk', '<Esc>', opts)
--map('n', ';', ':', opts)

-- Navigate windows with Ctrl + hjkl
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- save with ctrl + s
map('n', '<C-s>', ':w<cr>', opts)

-- Toggle CHADtree
map('n', '<C-n>', ':CHADopen<cr>:set nu rnu<cr>', opts)



-- reload vim config --
map('n', '<leader>r', ':so ~/.config/nvim/init.lua', opts)


-- Searching
map('n', '<C-p>', ':Files<Cr>', opts)      -- Search Files By Filename --
map('n', '<C-f>', ':Rg<Cr>', opts)         -- Search Files By Contents --
map('n', '<Space>', ':noh<Cr>', opts)  -- Remove search highlight with Space
map('n', '<leader>/', ':%s//', opts)

