local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
vim.keymap.set("n", "<leader>fg", builtin.find_files, { desc = "[f]ind [g]it" })
vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "[f]ind [s]tring by Grep" })
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[f]ind current [w]ord" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[f]ind [h]elp" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[f]ind [d]iagnostics" })
vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[f]ind [r]esume" })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

-- It's also possible to pass additional configuration options.
vim.keymap.set("n", "<leader>f/", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[f]ind [/] in Open Files" })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<leader>fn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[f]ind [n]eovim files" })
-- .conf opener
vim.keymap.set("n", "<leader>fj", function()
	builtin.find_files({ cwd = "~/.config" })
end, { desc = "[f]ind [j] Config files" })
