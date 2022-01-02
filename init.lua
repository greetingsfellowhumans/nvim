---- PLUGINS ----
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'vimwiki/vimwiki'
  use({ 'ms-jpq/chadtree', run = 'python3 -m chadtree deps --nvim' })
  use 'ryanoasis/vim-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
require('custom.lualine')

---- SETTINGS ----
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2


---- KEY MAPS ----
require('custom.remaps')


