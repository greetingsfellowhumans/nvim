local map = vim.api.nvim_set_keymap
local opts = {noremap = true }

map('n', '<leader>io', '<Insert>IO.inspect(, label: "")<Esc>%', opts)
map('i', '<leader>io', 'IO.inspect(, label: "")<Esc>%a', opts)
map('i', '<leader>m', '%{}<Esc><Insert>', opts)


