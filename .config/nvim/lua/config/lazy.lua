-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Set basic options and keymaps
require("config.base")

-- Load plugins.
-- Plugins are split in 2 broad sub-categories:
--  * base: plugins that provide common dependencies and/or general enhancements to neovim and
--          that do not have an obvious place in one of the sub-topics below;
--  * topics: these plugins are further split into sub-topics:
--    * ui: plugins providing general UI enhancements outside the buffers, eg lualine for statusline,
--          neotree for file tree navigation (and more)...
--    * editor: for general text editing enhancements, eg navigation in and between files, eg telescope, treesitter...
--    * lsp: for general LSP server configurations
--    * cmp: for general completion configuration, eg nvim-cmmp, luasnip...
--    * coding: for general coding tools configuraion, eg test runner, debugging...
--    * <lang>: per language specific configuration
require("lazy").setup({
  { import = "plugins.base" },
  { import = "plugins.topics" },
}, {
  install = {
    colorscheme = { "onenord" },
  },
})


