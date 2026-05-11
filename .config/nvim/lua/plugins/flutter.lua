return {
  { "mfussenegger/nvim-dap", config = function() end },

  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("flutter-tools").setup({
        debugger = { enabled = true, run_via_dap = true },
        lsp = { settings = { completeFunctionCalls = true } },
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      if not vim.tbl_contains(opts.ensure_installed, "dart") then
        table.insert(opts.ensure_installed, "dart")
      end
    end,
  },
}
