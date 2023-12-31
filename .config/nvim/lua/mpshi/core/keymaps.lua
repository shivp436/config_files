-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- movement
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", '"', "$")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true })
keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true })
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })

-- Move text up and down
keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==")
keymap.set("v", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")

-- Better terminal resizing
keymap.set("t", "<C-Up>", "<C-\\><C-N>:resize -2<CR>", { noremap = true })
keymap.set("t", "<C-Down>", "<C-\\><C-N>:resize +2<CR>", { noremap = true })
keymap.set("t", "<C-Left>", "<C-\\><C-N>:vertical resize -2<CR>", { noremap = true })
keymap.set("t", "<C-Right>", "<C-\\><C-N>:vertical resize +2<CR>", { noremap = true })

-- ThePrimeagen Keymaps --
vim.keymap.set("n", "J", "mzJ`z") -- Join lines without spaces
vim.keymap.set("n", "Y", "y$") -- Yank to end of line
vim.keymap.set("n", "n", "nzzzv") -- Center next search result
vim.keymap.set("n", "N", "Nzzzv") -- Center previous search result
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Move down half screen
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Move up half screen
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste over visual selection
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Copy to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- Delete to blackhole register
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]]) -- Delete to blackhole register
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Search and replace word under cursor
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Make file executable
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- Open tmux sessionizer
