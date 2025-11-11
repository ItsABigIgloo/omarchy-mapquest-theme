return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#ECD3A1", -- Default background
                base01 = "#b79f70", -- Lighter background (status bars)
                base02 = "#ECD3A1", -- Selection background
                base03 = "#b79f70", -- Comments, invisibles
                base04 = "#121515", -- Dark foreground
                base05 = "#3c4747", -- Default foreground
                base06 = "#3c4747", -- Light foreground
                base07 = "#121515", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#4F351E", -- Variables, errors, red
                base09 = "#966133", -- Integers, constants, orange
                base0A = "#826e48", -- Classes, types, yellow
                base0B = "#3A443D", -- Strings, green
                base0C = "#7B826D", -- Support, regex, cyan
                base0D = "#1C2121", -- Functions, keywords, blue
                base0E = "#764E27", -- Keywords, storage, magenta
                base0F = "#b59d71", -- Deprecated, brown/yellow
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
