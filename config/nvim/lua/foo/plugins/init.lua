-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugin-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")
  use("doums/darcula")
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation
  use("szw/vim-maximizer") -- maximizes and restores current window
  -- essential plugins
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
  use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

  -- commenting with gc
  use({
    "numToStr/Comment.nvim", 
    config = function()
      require("foo.plugins.Comment")
    end,
  })

  -- statusline
  use("itchyny/lightline.vim")
  use({
  'nvim-telescope/telescope.nvim',
  requires = {
    { 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
  },
  config = function()
    require('foo.plugins.telescope')
  end,
  })
  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
    config = function()
      require('foo.plugins.Treesitter')
    end,
  })



  if packer_bootstrap then
    require("packer").sync()
  end
end)
