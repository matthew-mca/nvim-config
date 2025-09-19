local M = {}

local defaults = {
	color_scheme = "tokyonight",
}

function M.setup(opts)
	opts = opts or {}
	local scheme = opts.color_scheme or vim.env.NVIM_COLOR_SCHEME or defaults.color_scheme
	-- Fall back to default scheme if the provided name is not valid
	if not pcall(vim.cmd, "colorscheme " .. scheme) then
		vim.cmd("colorscheme " .. defaults.color_scheme)
	end
end

return M
