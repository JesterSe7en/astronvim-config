return {
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    enabled = false,
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    config = true,
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        window = {
          winblend = vim.g.winblend,
        },
      })
    end,
  },

  --- Functionality ---

  {
    "folke/trouble.nvim",
  },
  {
    "windwp/nvim-spectre",
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    config = true,
  },
}
