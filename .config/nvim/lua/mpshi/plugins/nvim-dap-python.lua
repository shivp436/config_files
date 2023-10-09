return {
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },

    config = function()
      local dappython = require("dap-python")
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      dappython.setup(path)

      local keymap = vim.keymap
      keymap.set("n", "<leader>dpr", ':lua require("dap-python").test_method()<CR>')
    end,
  },
}
