return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",

				-- Let Kitty + Hyprland provide the glass.
				transparent_background = true,

				float = {
					transparent = true,
					solid = false,
				},

				-- Mostly monochrome palette
				color_overrides = {
					mocha = {
						rosewater = "#FFFFFF",
						flamingo = "#E8E8E8",
						pink = "#DCDCDC",
						mauve = "#C8C8C8",

						-- Very subtle semantic colors
						red = "#D8A0A0",
						maroon = "#C99090",
						peach = "#D8B49A",
						yellow = "#D8D0A0",
						green = "#A8C0A8",
						teal = "#A0BABA",
						sky = "#A8BCC8",
						sapphire = "#9EAFBA",
						blue = "#AAB8C8",
						lavender = "#B8B8C8",

						-- Text hierarchy
						text = "#FFFFFF",
						subtext1 = "#D6D6D6",
						subtext0 = "#A8A8A8",

						-- Gray UI
						overlay2 = "#888888",
						overlay1 = "#686868",
						overlay0 = "#4A4A4A",

						-- Glass surfaces
						surface2 = "#2A2A2A",
						surface1 = "#1C1C1C",
						surface0 = "#141414",

						-- Background
						base = "#0B0B0D",
						mantle = "#08080A",
						crust = "#050507",
					},
				},

				-- Minimal syntax highlighting
				custom_highlights = function(colors)
					return {
						-- Main code
						["@variable"] = { fg = colors.text },
						["@variable.builtin"] = { fg = colors.text },
						["@variable.parameter"] = { fg = colors.text },
						["@variable.member"] = { fg = colors.text },

						-- Functions
						["@function"] = { fg = colors.text },
						["@function.call"] = { fg = colors.text },
						["@function.method"] = { fg = colors.text },
						["@function.method.call"] = { fg = colors.text },

						-- Types / classes
						["@type"] = { fg = colors.text },
						["@type.builtin"] = { fg = colors.text },
						["@type.definition"] = { fg = colors.text },
						["@constructor"] = { fg = colors.text },

						-- Parameters
						["@parameter"] = { fg = colors.text },
						["@parameter.reference"] = { fg = colors.text },

						-- Properties / fields
						["@property"] = { fg = colors.text },
						["@field"] = { fg = colors.text },

						-- Keywords
						["@keyword"] = { fg = colors.text },
						["@keyword.function"] = { fg = colors.text },
						["@keyword.return"] = { fg = colors.text },
						["@keyword.operator"] = { fg = colors.text },

						-- Operators / punctuation
						["@operator"] = { fg = colors.subtext1 },
						["@punctuation.bracket"] = { fg = colors.subtext1 },
						["@punctuation.delimiter"] = { fg = colors.subtext1 },
						["@punctuation.special"] = { fg = colors.subtext1 },

						-- Constants / numbers / booleans
						["@constant"] = { fg = colors.text },
						["@constant.builtin"] = { fg = colors.text },
						["@number"] = { fg = colors.text },
						["@boolean"] = { fg = colors.text },

						-- Strings
						["@string"] = { fg = colors.subtext1 },
						["@string.escape"] = { fg = colors.subtext1 },
						["@string.special"] = { fg = colors.subtext1 },

						-- Comments
						["@comment"] = {
							fg = colors.overlay2,
							italic = true,
						},

						-- Labels / tags
						["@label"] = { fg = colors.text },
						["@tag"] = { fg = colors.text },
						["@tag.attribute"] = { fg = colors.text },
						["@tag.delimiter"] = { fg = colors.subtext1 },

						-- Markdown / headings
						["@markup.heading"] = {
							fg = colors.text,
							bold = true,
						},

						["@markup.italic"] = {
							fg = colors.subtext1,
							italic = true,
						},

						["@markup.bold"] = {
							fg = colors.text,
							bold = true,
						},
					}
				end,

				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					telescope = true,
					which_key = true,

					indent_blankline = {
						enabled = true,
						scope_color = "overlay2",
						colored_indent_levels = false,
					},

					native_lsp = {
						enabled = true,

						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},

						underlines = {
							errors = { "undercurl" },
							hints = { "undercurl" },
							warnings = { "undercurl" },
							information = { "undercurl" },
						},
					},
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
