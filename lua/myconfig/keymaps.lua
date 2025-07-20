local vim = vim

-- local function -- imap(input, mapping)
--	vim.keymap.set("i", input, mapping)
-- end

-- imap('"', '""<Left>')
-- imap("'", "''<Left>")
-- imap("[", "[]<Left>")
-- imap("{", "{}<Left>")
-- imap("(", "()<Left>")

-- Cheeky lil' keybind for use with oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
