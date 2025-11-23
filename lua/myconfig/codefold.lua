local M = {}

function M.setup()
	-- Prevent auto-folding of any kind when opening a new buffer
	vim.opt.foldlevel = 99
	vim.opt.foldlevelstart = 99

	vim.api.nvim_create_autocmd("FileType", {
		pattern = "python",
		callback = function()
			vim.opt_local.foldmethod = "indent"
		end,
	})
end

return M
