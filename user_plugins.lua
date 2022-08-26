return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- You can also add new plugins here as well:
  -- { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "sonph/onehalf",
  --   rtp = "vim/",
  --   config = function()
  --     vim.cmd("colorscheme onehalfdark")
  --   end,
  -- },

  { "morhetz/gruvbox" },
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    run = ":CatppuccinCompile",
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    tag = "v1.*",
  },
  { "~/PrivateProjects/playground/neovim-plugins/theme-sync"},
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({})
    end,
  },
}
