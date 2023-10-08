return {
  "preservim/tagbar",
  config = function()
    vim.g.tagbar_width = 25 -- Use vim.g to set global variables in Lua.

    local keymap = vim.api.nvim_set_keymap -- Updated way to set keymaps.

    keymap("n", "<F8>", ":TagbarToggle<CR>", { noremap = true, silent = true, desc = "Toggle tagbar" })
  end,
}
