require("telescope").setup({
	extensions = {
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
		},
	},
})
require("telescope").load_extension("dap")
local fb = require("telescope").load_extension("file_browser")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "fr", builtin.resume, {})
vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fd", function()
	builtin.diagnostics({ initial_mode = "normal" })
end, {})
vim.keymap.set("n", "fl", builtin.live_grep, {})
vim.keymap.set("n", "fb", function()
	builtin.buffers({ initial_mode = "normal" })
end, {})
vim.keymap.set("n", "fh", builtin.help_tags, {})

vim.keymap.set("n", "fgc", builtin.git_commits, {})
vim.keymap.set("n", "fgb", builtin.git_branches, {})
vim.keymap.set("n", "fgs", builtin.git_status, {})
vim.keymap.set("n", "fgf", builtin.git_files, {})

vim.keymap.set("n", "<space>fb", function()
	fb.file_browser({ initial_mode = "normal" })
end, { noremap = true })
