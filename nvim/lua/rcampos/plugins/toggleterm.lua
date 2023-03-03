-- import toggleterm plugin safely
local status, toggleterm = pcall(require, "toggleterm")
if not status then
	return
end

-- configure toggleterm
toggleterm.setup({
	open_mapping = [[<c-t>]],
	direction = "float",
})
