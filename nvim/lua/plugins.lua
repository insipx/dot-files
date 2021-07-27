-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  
  use { 'neovim/nvim-lspconfig', config = function()
    require('lspconfig').rust_analyzer.setup {
      cmd = { "rust-analyzer-wrapped" }
    }
    end
  }

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

  use '9mm/vim-closer'
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use {"npxbr/glow.nvim", run = "GlowInstall"}
  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}
  use 'voldikss/vim-floaterm'
  use 'moll/vim-bbye'

  -- discord presence
  use 'andweeb/presence.nvim'
  use { 
    'rmagatti/auto-session', 
    config = 
    function() require'auto-session'.setup
      {
	  auto_session_enabled = true,
      } 
    end 
  }

  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {}
    end
  }
  
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require'colorizer'.setup() end
  }

  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- your statusline
      config = function() require'eviline' end,
      -- some optional icons
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Post-install/update hook with call of vimscript function with argument
  
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load 
  --  use { 'tamton-aquib/staline.nvim', requires = { 'kyazdani42/nvim-web-devicons' }, config = function() require('staline').setup{} end }
  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  
--   use 'maxbrunsfeld/vim-yankstack' make your own kill-ring plugin

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
      }
    end
  }

  use { 
    "vhyrro/neorg",
    config = function()
        require('neorg').setup {
            -- Tell Neorg what modules to load
            load = {
                ["core.defaults"] = {}, -- Load all the default modules
                ["core.norg.concealer"] = {}, -- Allows for use of icons
                ["core.norg.dirman"] = { -- Manage your directories with Neorg
                    config = {
                        workspaces = {
                            my_workspace = "~/neorg"
                        }
                    }
                }
            },
        }
    end,
    requires = "nvim-lua/plenary.nvim"
  }
end)

