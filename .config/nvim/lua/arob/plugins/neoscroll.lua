local neoscroll = require("neoscroll")

local easing = "sine"
local zz_time_ms = 5
local jump_time_ms = 10

-- if you want a simpler solution, use this:
-- local centering_function = function()
--     vim.cmd("normal! zz")
-- end

local centering_function = function()
	local defer_time_ms = 1
	-- The `defer_fn` is a bit of a hack.
	-- We use it so that `neoscroll.init.scroll` will be false when we call `neoscroll.zz`
	-- As long as we don't input another neoscroll mapping in the timeout,
	-- we should be able to center the cursor.
	vim.defer_fn(function()
		neoscroll.zz(zz_time_ms, easing)
	end, defer_time_ms)
end

neoscroll.setup({
	post_hook = function(info)
		if info ~= "center" then
			return
		end

		centering_function()
	end,
})

local mappings = {}

mappings["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", jump_time_ms, easing, "'center'" } }
mappings["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", jump_time_ms, easing, "'center'" } }

require("neoscroll.config").set_mappings(mappings)
