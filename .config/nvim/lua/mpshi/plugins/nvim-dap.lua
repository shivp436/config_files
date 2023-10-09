return {
  {
    "mfussenegger/nvim-dap",

    config = function()
      local keymap = vim.keymap

      keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>")
    end,
  },
}
