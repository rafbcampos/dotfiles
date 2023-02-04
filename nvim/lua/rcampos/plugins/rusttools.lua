-- import rust-tools safely
local setup, rust_tools = pcall(require, "rust-tools")
if not setup then
	return
end

rust_tools.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<Leader>rh", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>ra", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})
