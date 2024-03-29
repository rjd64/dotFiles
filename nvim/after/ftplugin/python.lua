local setlocal = vim.opt_local
setlocal.tabstop = 4
setlocal.shiftwidth = 4
setlocal.softtabstop = 4
vim.api.nvim_buf_create_user_command(0, 'Pydoc', 
	function(opts)
		vim.cmd([[new]])
		vim.cmd([[r ! pydoc ]] .. opts.args)
		vim.cmd([[1]])
	end,
	{ nargs = 1 } 
)

