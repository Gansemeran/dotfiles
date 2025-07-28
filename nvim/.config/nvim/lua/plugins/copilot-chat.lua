return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "zbirenbaum/copilot.lua" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-lua/plenary.nvim",                  branch = "master" },
	},
	build = "make tiktoken",
	config = function()
		local chat = require("CopilotChat")
		local select = require("CopilotChat.select")
		chat.setup({
			-- Uses visual selection or falls back to buffer
			selection = function(source)
				return select.visual(source) or select.buffer(source)
			end
		})
		vim.keymap.set("n", "<leader>cc", chat.toggle, { desc = "Toggle Copilot Chat" })
	end
}
