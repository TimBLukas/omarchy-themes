return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,

		config = function()
			-- Disable LSP semantic tokens so language servers don't re-color functions/parameters
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client then
						client.server_capabilities.semanticTokensProvider = nil
					end
				end,
			})

			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,

				float = {
					transparent = true,
					solid = false,
				},

				-- Ultra-minimal monochrome palette
				color_overrides = {
					mocha = {
						-- Foreground
						text = "#E6E8EB",
						subtext1 = "#B8BDC5",
						subtext0 = "#949AA3",

						-- Overlays
						overlay2 = "#737982",
						overlay1 = "#5F656D",
						overlay0 = "#4A4F57",

						-- Surfaces
						surface2 = "#363A40",
						surface1 = "#292D32",
						surface0 = "#22262B",

						-- Background
						base = "#17191D",
						mantle = "#131519",
						crust = "#0F1114",

						-- Semantic colors → monochrome
						rosewater = "#E6E8EB",
						flamingo = "#E6E8EB",
						pink = "#D4D7DC",
						mauve = "#D4D7DC",

						red = "#B8BDC5",
						maroon = "#B8BDC5",

						peach = "#B8BDC5",
						yellow = "#B8BDC5",
						green = "#B8BDC5",
						teal = "#B8BDC5",

						sky = "#D4D7DC",
						sapphire = "#D4D7DC",
						blue = "#D4D7DC",
						lavender = "#E6E8EB",
					},
				},

				custom_highlights = function(colors)
					local text = { fg = colors.text }
					local muted = { fg = colors.subtext1 }
					local comment = { fg = colors.overlay2, italic = true }

					return {
						["@variable"] = text,
						["@variable.builtin"] = text,
						["@variable.parameter"] = text,
						["@variable.member"] = text,
						["@function"] = text,
						["@function.call"] = text,
						["@function.method"] = text,
						["@function.method.call"] = text,
						["@function.builtin"] = text,
						["@function.macro"] = text,
						["@parameter"] = text,
						["@parameter.reference"] = text,
						["@property"] = text,
						["@field"] = text,
						["@type"] = text,
						["@type.builtin"] = text,
						["@type.definition"] = text,
						["@type.qualifier"] = text,
						["@constructor"] = text,
						["@keyword"] = text,
						["@keyword.function"] = text,
						["@keyword.return"] = text,
						["@keyword.operator"] = text,
						["@keyword.import"] = text,
						["@keyword.conditional"] = text,
						["@keyword.repeat"] = text,
						["@constant"] = text,
						["@constant.builtin"] = text,
						["@constant.macro"] = text,
						["@number"] = text,
						["@boolean"] = text,
						["@label"] = text,
						["@tag"] = text,
						["@tag.attribute"] = text,
						["@markup.heading"] = { fg = colors.text, bold = true },
						["@markup.bold"] = { fg = colors.text, bold = true },
						["@markup.italic"] = { fg = colors.subtext1, italic = true },

						-- Punctuation, operators, strings
						["@operator"] = muted,
						["@punctuation.bracket"] = muted,
						["@punctuation.delimiter"] = muted,
						["@punctuation.special"] = muted,
						["@tag.delimiter"] = muted,
						["@string"] = muted,
						["@string.escape"] = muted,
						["@string.special"] = muted,

						["@comment"] = comment,

						Function = text,
						Identifier = text,
						Statement = text,
						Type = text,
						Constant = text,
						PreProc = text,
						String = muted,
						Comment = comment,
						Special = muted,
						Delimiter = muted,
						Operator = muted,

						["@lsp.type.function"] = text,
						["@lsp.type.method"] = text,
						["@lsp.type.parameter"] = text,
						["@lsp.type.variable"] = text,
						["@lsp.type.property"] = text,
						["@lsp.type.keyword"] = text,
						["@lsp.type.type"] = text,
						["@lsp.type.class"] = text,
						["@lsp.type.namespace"] = text,
						["@lsp.type.enum"] = text,
						["@lsp.type.enumMember"] = text,
						["@lsp.type.interface"] = text,
						["@lsp.type.struct"] = text,
						["@lsp.type.macro"] = text,
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
