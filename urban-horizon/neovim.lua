return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#ecebea", -- Default background
                base01 = "#9fa7ae", -- Lighter background (status bars)
                base02 = "#ecebea", -- Selection background
                base03 = "#9fa7ae", -- Comments, invisibles
                base04 = "#46545d", -- Dark foreground
                base05 = "#2f3a42", -- Default foreground
                base06 = "#2f3a42", -- Light foreground
                base07 = "#223039", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#8a6f5c", -- Variables, errors, red/orange
                base09 = "#9e8270", -- Integers, constants, bright orange
                base0A = "#b29f7f", -- Classes, types, yellow
                base0B = "#7f9186", -- Strings, green
                base0C = "#8a6f5c", -- Support, regex, cyan (AURORA)
                base0D = "#5f7888", -- Functions, keywords, blue
                base0E = "#7f8795", -- Keywords, storage, magenta
                base0F = "#c4b392", -- Deprecated, bright yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
