-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('bluz71/vim-moonfly-colors')

  use('haishanh/night-owl.vim')
  
  use('Mofiqul/vscode.nvim')

  use("Alexis12119/nightly.nvim")

  use("projekt0n/github-nvim-theme");

  use("rebelot/kanagawa.nvim");

  use("fenetikm/falcon");

  use("pineapplegiant/spaceduck")

  use("ayu-theme/ayu-vim")
  
  use('agude/vim-eldar')

  use("nvim-tree/nvim-tree.lua")
  
  use("nvim-tree/nvim-web-devicons")

  use('nvim-treesitter/nvim-treesitter', { run =  ':TSUpdate'})
  
  use('nvim-lualine/lualine.nvim')

  use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  use("jose-elias-alvarez/null-ls.nvim")
  use("jay-babu/mason-null-ls.nvim")
  use('neovim/nvim-lspconfig')
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use("windwp/nvim-ts-autotag")
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use({
  "CopilotC-Nvim/CopilotChat.nvim",
  requires = {
    { "github/copilot.vim" }, -- Or use "zbirenbaum/copilot.lua"
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  run = "make tiktoken", -- Only on macOS or Linux
  config = function()
    require("CopilotChat").setup({
      -- Add your config options here
    })
  end,
})
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
  use("xiyaowong/transparent.nvim")
  use('aca/emmet-ls')
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
}
  use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
        position = "botton", 
        icons = true, 
         use_diagnostic_signs = true
    }
  end
}
end)
