---- PLUGINS ----

-- After adding a new package, close and reopen nvim. Then run :PackerSync
-- If the plug instructions say something like this:
-- ---- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
-- Then you can probably just do:
-- ---- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
-------
require('packer').startup(function()
  use 'wbthomason/packer.nvim'                                                               -- Setup
  use({ 'ms-jpq/chadtree', run = 'python3 -m chadtree deps --nvim' })                        -- File tree
  use 'ryanoasis/vim-devicons'                                                               -- Icons
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}} -- Powerline at the bottom}
  use 'hrsh7th/nvim-cmp'                                                                     -- Completion plugin
  use 'hrsh7th/cmp-buffer'                                                                   -- Completion for buffers
  use 'hrsh7th/cmp-path'                                                                     -- Completion for paths
  use 'hrsh7th/cmp-cmdline'                                                                  -- Completion for commandline
  use 'hrsh7th/cmp-nvim-lsp'                                                                 -- Completion lsp package
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("onsails/lspkind-nvim")
  use("EdenEast/nightfox.nvim")
  use "neovim/nvim-lspconfig"                                                                -- language server configurations

--  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}                                 -- lsp based syntax highlighting
  use 'elixir-editors/vim-elixir'

  -- Find things
  -- use "ctrlpvim/ctrlp.vim"
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use "junegunn/fzf.vim"

  -- send code to repl
  use "jpalardy/vim-slime"

  -- Pretty printing errors
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)

-- require('nightfox').load('nordfox')
require('custom.chad')
require('custom.global_settings')
require('custom.lualine')
require('custom.remaps')
require('custom.ex_snip')
require('custom.slime')
require('custom.trouble')
require('custom.yankhighlight')

-- LSP stuff
--require('custom.lsp_client')
require('custom.elixirls')
-- require('custom.treesitter')

vim.cmd("colorscheme nightfox")
