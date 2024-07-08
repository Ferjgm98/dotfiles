return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		local actions = require("oil.actions")

		oil.setup({
			columns = {
				"icon",
			},
			keymaps = {
				["<C-s>"] = false,
				["<C-h>"] = false,
				["<C-l>"] = false,
			},
		})

		vim.keymap.set("n", "-", oil.toggle_float, { desc = "Oil open" })
		vim.keymap.set("n", "<leader>|", actions.select_vsplit.callback, { desc = actions.select_vsplit.desc })
		vim.keymap.set("n", "<leader>-", actions.select_split.callback, { desc = actions.select_split.desc })
		vim.keymap.set("n", "<leader>r", actions.refresh.callback, { desc = actions.refresh.desc })
	end,
}
