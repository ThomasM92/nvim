return {
	{
		"echasnovski/mini.bufremove",
		-- lazy = true,
		config = function()
			require('mini.bufremove').setup()
		end
	},
	{
		'echasnovski/mini.surround',
		-- lazy = true,
		config = function()
			require('mini.surround').setup()
		end
	},
}
