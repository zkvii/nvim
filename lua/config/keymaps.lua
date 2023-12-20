-- This file is automatically loaded by lazyvim.plugins.config

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

map("i", "jj", "<Esc>", { desc = "remap esc" })
map("i", "jk", "<Esc>", { desc = "remap esc" })
-- aerial toggle
map("n", "<leader>at", function()
	require("aerial").toggle()
end, { desc = "toggle aerial" })

map("n", "<F5>", function()
	require("dap").continue({})
end, { desc = "map toggle point" })
map("n", "<F7>", function()
	require("dap").toggle_breakpoint()
end, { desc = "map contine" })
map("n", "<F10>", function()
	require("dap").step_over()
end, { desc = "step_over" })
map("n", "<F11>", function()
	require("dap").step_into()
end, { desc = "step_into" })
map("n", "<F12>", function()
	require("dap").step_out()
end, { desc = "step_out" })

map("n", "<leader>us", function()
	Util.toggle("spell")
end, { desc = "Toggle Spelling" })
map("n", "<leader>tb", function()
	require("barbecue.ui").toggle()
end, { desc = "toggle barbecue" })
