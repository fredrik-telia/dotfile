return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion
  -- use { 'neovim/nvim-lspconfig' }
  -- use { 'williamboman/nvim-lsp-installer' }
  -- use { 'nvim-lua/completion-nvim' }
  use { 'neovim/nvim-lspconfig', config = [[ require('config/nvim-lspconfig')]] }
  use { 'jose-elias-alvarez/null-ls.nvim', config = [[ require('config/null-ls')]] }
  use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }

  use {
    'williamboman/nvim-lsp-installer',
    config = [[ require('config/lsp_installer_nvim') ]]
  }
  use { -- vscode-like pictograms for neovim lsp completion items Topics
    'onsails/lspkind-nvim',
    config = [[ require('config/lspkind') ]]
  }
  use { -- Utility functions for getting diagnostic status and progress messages from LSP servers, for use in the Neovim statusline
    'nvim-lua/lsp-status.nvim',
    config = [[ require('config/lspstatus') ]]
  }
  -- Lua development
  -- use { 'tjdevries/nlua.nvim' }
	use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
      'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
      'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
      'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
     },
     config = [[ require('config/nvim-cmp') ]]
  }
  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp'
  }



  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

end)
