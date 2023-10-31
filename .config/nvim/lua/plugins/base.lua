return {
  -- Common dependency
  { "nvim-lua/plenary.nvim" },

  -- My favorite colorscheme so far
  {
    "rmehri01/onenord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme onenord]])
    end,
  },
  -- Useful plugin to show you pending keybinds
  { "folke/which-key.nvim", opts = {} },
}
