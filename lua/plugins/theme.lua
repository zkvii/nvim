return {
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },

	{ "rmehri01/onenord.nvim" },
	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
