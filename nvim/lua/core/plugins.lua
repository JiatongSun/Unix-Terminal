local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Automatically run ':PackerSync' whenever 'plugins.lua' is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'lewis6991/impatient.nvim',
  }

  use {
    'nvim-lua/plenary.nvim',
  }

  use {
    'nvim-tree/nvim-web-devicons',
  }

  use {
    'christoomey/vim-tmux-navigator',
  }

  use {
    'nvim-telescope/telescope.nvim',
  }

  use {
    'nvim-treesitter/nvim-treesitter',
  }

  use {
    'lewis6991/gitsigns.nvim',
  }

  use {
    'nvim-tree/nvim-tree.lua',
  }

  use {
    'mileszs/ack.vim',
  }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'L3MON4D3/LuaSnip',
    'hrsh7th/nvim-cmp',
  }

  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('dashboard').setup()
    end
  }

  use {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup()
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup()
    end
  }

  use {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup()
    end
  }

  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  }

  use {
    'ggandor/leap.nvim',
    config = function()
      require('leap').set_default_keymaps()
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
