local map = vim.api.nvim_set_keymap
local opts = {noremap = true }

-- Elixir snippets for fun and profit!
-- `mod = a new module
-- `fn = a new function
-- `test = a new test module


map('i', '<leader>mod', '<Esc>:r ~/.config/nvim/snippets/ex_module.exs<Cr>ggdd/Name<Cr>', opts)
map('i', '<leader>dom', '<Esc>:r ~/.config/nvim/snippets/ex_domain.exs<Cr>ggdd/Name<Cr>', opts)
map('i', '<leader>fn', '<Esc>:r ~/.config/nvim/snippets/ex_fn.exs<Cr>10>>/defname<Cr>', opts)
map('i', '<leader>port', '<Esc>:r ~/.config/nvim/snippets/ex_port.exs<Cr>14>>/defname<Cr>', opts)
map('i', '<leader>test', '<Esc>:r ~/.config/nvim/snippets/ex_test.exs<Cr>ggdd/Name<Cr>', opts)






