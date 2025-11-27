return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#022A38", -- Default background
                base01 = "#5ca9c4", -- Lighter background (status bars)
                base02 = "#022A38", -- Selection background
                base03 = "#5ca9c4", -- Comments, invisibles
                base04 = "#C9A7C3", -- Dark foreground
                base05 = "#eddfea", -- Default foreground
                base06 = "#eddfea", -- Light foreground
                base07 = "#C9A7C3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#CD5BA3", -- Variables, errors, red
                base09 = "#e69ecb", -- Integers, constants, orange
                base0A = "#a8ae98", -- Classes, types, yellow
                base0B = "#68cfa3", -- Strings, green
                base0C = "#86e7ee", -- Support, regex, cyan
                base0D = "#9c9dba", -- Functions, keywords, blue
                base0E = "#cf96cc", -- Keywords, storage, magenta
                base0F = "#d4d7cb", -- Deprecated, brown/yellow
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
