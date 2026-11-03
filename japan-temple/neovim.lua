return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				color_overrides = {
					mocha = {
						text = "#d6e2df",
						subtext1 = "#b8cbc7",
						subtext0 = "#718887",
						overlay2 = "#4f6869",
						overlay1 = "#405658",
						overlay0 = "#304344",
						surface2 = "#26383c",
						surface1 = "#203034",
						surface0 = "#1c2a2f",
						base = "#182328",
						mantle = "#11191d",
						crust = "#0b1114",
						rosewater = "#d6e2df",
						flamingo = "#c9857d",
						pink = "#aa91a8",
						mauve = "#aa91a8",
						red = "#c9857d",
						maroon = "#c9857d",
						peach = "#c49a78",
						yellow = "#c7b98a",
						green = "#8eaa86",
						teal = "#86b8b0",
						sky = "#9bcac5",
						sapphire = "#83b9b6",
						blue = "#88a9c0",
						lavender = "#a4c0d4",
					},
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					telescope = true,
					which_key = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
