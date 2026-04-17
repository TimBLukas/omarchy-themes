return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1a1f2e", -- Default background
                base01 = "#4c566a", -- Lighter background (status bars)
                base02 = "#1a1f2e", -- Selection background
                base03 = "#4c566a", -- Comments, invisibles
                base04 = "#d8dee9", -- Dark foreground
                base05 = "#e5e9f0", -- Default foreground
                base06 = "#e5e9f0", -- Light foreground
                base07 = "#eceff4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#d08770", -- Variables, errors, red/orange
                base09 = "#d98770", -- Integers, constants, bright orange
                base0A = "#ebcb8b", -- Classes, types, yellow
                base0B = "#a3be8c", -- Strings, green
                base0C = "#d08770", -- Support, regex, cyan (AURORA)
                base0D = "#5e81ac", -- Functions, keywords, blue
                base0E = "#b48ead", -- Keywords, storage, magenta
                base0F = "#f0d99c", -- Deprecated, bright yellow
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
