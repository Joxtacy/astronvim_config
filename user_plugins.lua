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

  -- Disabled plugins
  ["declancm/cinnamon.nvim"] = { disable = true },
  -- Disabled plugins end

  -- Begin Themes --
  -- { "morhetz/gruvbox" },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
      })
    end
  },
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup({
        mirage = false,
        overrides = function()
          if vim.o.background == 'dark' then
            return { NormalNC = { bg = '#0f151e', fg = '#808080' } }
          else
            return { NormalNC = { bg = '#f0f0f0', fg = '#808080' } }
          end
        end
      })
    end
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    tag = "v1.*",
  },
  -- { "~/PrivateProjects/playground/neovim-plugins/theme-sync" },
  -- End Themes --
  {
    "glacambre/firenvim",
    run = function()
      vim.fn["firenvim#install"](0)
    end
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({})
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    after = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
    config = function()
      require("rust-tools").setup({
        server = astronvim.lsp.server_settings "rust_analyzer", -- get the server settings and built in capabilities/on_attach
      })
    end
  },
  {
    "sigmasd/deno-nvim",
    config = function()
      require("deno-nvim").setup({})
    end,
  },
  {
    "danilamihailov/beacon.nvim",
  },
  -- leap.nvim --
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end
  },
  -- dependency for leap.nvim to make . repeats work as intended --
  { "tpope/vim-repeat" },
  -- leap.nvim --
  { "imsnif/kdl.vim" },
}
