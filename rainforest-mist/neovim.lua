return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#181d1a", -- Default background (deep forest)
                base01 = "#2a3a30", -- Lighter background (status bars)
                base02 = "#181d1a", -- Selection background
                base03 = "#2a3a30", -- Comments, invisibles
                base04 = "#d8e5dd", -- Dark foreground
                base05 = "#d8e5dd", -- Default foreground (misty cloud)
                base06 = "#e8f5ed", -- Light foreground
                base07 = "#e8f5ed", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#7a9e7e", -- Variables, errors, moss
                base09 = "#8eb891", -- Integers, constants, fern
                base0A = "#8eb891", -- Classes, types, bright fern
                base0B = "#5a8e7a", -- Strings, jade green
                base0C = "#6ba89f", -- Support, regex, turquoise
                base0D = "#6ba89f", -- Functions, keywords, turquoise water
                base0E = "#7a8c8e", -- Keywords, storage, fog
                base0F = "#9ec9a1", -- Deprecated, bright fern
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
