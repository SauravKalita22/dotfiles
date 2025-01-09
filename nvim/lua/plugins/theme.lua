return {
    "catppuccin/nvim",
    config = function()
        -- Initial transparency state
        local bg_transparent = true

        -- Function to apply Catppuccin theme with the current transparency state
        local apply_catppuccin = function()
            require("catppuccin").setup({
                flavour = "mocha",           -- Set flavor to Mocha
                transparent_background = bg_transparent, -- Use current transparency state
                integrations = {
                    nvimtree = {
                        transparent_panel = bg_transparent, -- Make nvim-tree panel transparent as well
                    },
                },
            })
            vim.cmd("colorscheme catppuccin") -- Apply the colorscheme
        end

        -- Apply the theme initially
        apply_catppuccin()

        -- Function to toggle transparency
        local toggle_transparency = function()
            bg_transparent = not bg_transparent -- Toggle transparency
            apply_catppuccin()         -- Reapply the theme with the new state
        end

        -- Set keymap for toggling transparency
        vim.api.nvim_set_keymap("n", "<leader>bg", ":lua toggle_transparency()<CR>", { noremap = true, silent = true })

        -- Make the toggle_transparency function globally accessible
        _G.toggle_transparency = toggle_transparency
    end,
}
