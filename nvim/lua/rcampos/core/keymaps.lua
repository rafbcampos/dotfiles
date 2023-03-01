-- set leader key to space
vim.g.mapleader = " "

---------------------
-- General Keymaps
---------------------

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- window management
vim.keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- block movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move block of code up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move block of code down

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
vim.keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer]" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- telescope git commands
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) -- toggle undo tree