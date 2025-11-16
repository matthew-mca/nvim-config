-- local function -- imap(input, mapping)
--	vim.keymap.set("i", input, mapping)
-- end

-- imap('"', '""<Left>')
-- imap("'", "''<Left>")
-- imap("[", "[]<Left>")
-- imap("{", "{}<Left>")
-- imap("(", "()<Left>")

-- Set leader to the Space bar
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Cheeky lil' keybind for use with oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Open diagnostics
vim.keymap.set("n", "<Leader>od", "<CMD>lua vim.diagnostic.open_float()<CR>", { desc = "Open diagnostic" })

-- Git diff viewer
vim.keymap.set("n", "<Leader>gdo", "<CMD>DiffviewOpen<CR>", { desc = "Open git diff viewer" })
vim.keymap.set("n", "<Leader>gdc", "<CMD>DiffviewClose<CR>", { desc = "Close git diff viewer" })
