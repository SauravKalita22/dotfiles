return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	config = function()
		-- Load Copilot Plugin
		require("copilot").setup({
			suggestion = {
				enabled = true, -- Enable inline suggestions
				auto_trigger = true, -- Automatically trigger suggestions
				keymap = { -- Custom keybindings for navigation
					accept = "<C-CR>", -- Accept the current suggestion
					next = "<C-]>",
					prev = "<C-[>",
					dismiss = "<C-\\>",
				},
			},
			panel = {
				enabled = true, -- Enable Copilot's side panel
				keymap = {
					jump_next = "<Tab>", -- Jump to the next item in the panel
					jump_prev = "<S-Tab>", -- Jump to the previous item in the panel
					accept = "<CR>", -- Accept the selected suggestion
					refresh = "gr", -- Refresh suggestions in the panel
					open = "<M-CR>", -- Open the panel
				},
			},
			filetypes = {
				-- Enable Copilot suggestions for these filetypes
				javascript = true,
				typescript = true,
				jsx = true,
				lua = true,
				python = true,
				markdown = true,
				-- Disable for these filetypes (optional)
				help = false,
				gitcommit = false,
			},
			-- Other optional configurations:
			copilot_node_command = "node", -- Specify the node.js binary
			server_opts_overrides = {}, -- Advanced: Override Copilot server options
		})
	end,
}
