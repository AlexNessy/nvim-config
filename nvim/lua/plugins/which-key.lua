return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")
      wk.register({
        ["<C-p>"] = { "Find File" },
        ["<C-n>"] = { ":Neotree left <CR>", "Neotree" },
        ["<C-l>"] = { "<C-w>w", "Switch Windows" },
        ["<Tab>"] = { ":bnext <CR>", "Next Buffer" },
        ["<S-Tab>"] = { ":bprev <CR>", "Previous Buffer" },
        ["<C-e>"] = { "Show Harpoon List" },
        K = { "Define Function" },
        ["<leader>"] = {
          b = {
            name = "Buffer",
            r = { ":bdelete <CR>", "Close Buffer" },
          },
          a = { "Add to Harpoon List" },
          r = { "Remove from Harpoon List" },
          f = {
            name = "File",
            g = { "Live Grep" },
          },
        },
      })
    end,
  },
}
