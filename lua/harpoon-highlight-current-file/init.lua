local harpoon = require("harpoon")
local Extensions = require("harpoon.extensions")
local Path = require("plenary.path")

local M = {}

function M.setup()
	harpoon:extend({
		[Extensions.event_names.UI_CREATE] = function(ctx)
			local current = Path:new(ctx.current_file):make_relative(vim.uv.cwd())
			local regex = "\\V" .. current .. "\\$"
			-- highlight the line
			vim.fn.matchadd("HarpoonCurrentFile", regex)
			-- move the cursor to the line
			vim.fn.search(regex)
		end,
	})
end

return M
