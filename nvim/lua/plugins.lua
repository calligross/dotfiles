return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use "EdenEast/nightfox.nvim"
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha" -- mocha, macchiato, frappe, latte
      }
      vim.api.nvim_command "colorscheme catppuccin"
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons'

  use { 'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use('MunifTanjim/prettier.nvim')

  -- Auto-Completion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-nvim-lsp-document-symbol'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'     -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'             -- Snippets plugin
  use 'rafamadriz/friendly-snippets' -- collection of snippets for various languages

  -- Auto Brackets
  use 'windwp/nvim-autopairs'

  -- Help with surrounding elements
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- Commenting
  use 'numToStr/Comment.nvim'

  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  use 'leoluz/nvim-dap-go'
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  use {
    'yasudanaoya/gotests-nvim',
    ft = 'go',
    config = function()
      require('gotests').setup()
    end
  }

  --[[ use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  } ]]
  use 'christoomey/vim-tmux-navigator'
end)
