return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'kyazdani42/nvim-web-devicons',
	},
	keys = {
		{ '<leader>E', vim.cmd.NvimTreeToggle },
	},
	config = true,
	-- config = function()
	-- 	require("nvim-tree").setup()
	-- end,
	-- cmd = "nvimtreecmd",
}
