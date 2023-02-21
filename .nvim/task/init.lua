local utils = require("utils")

local overseer = require("overseer")

local scriptPath = utils.fn.root_pattern() .. "/.nvim/task/task.sh"

overseer.register_template({
	name = "build",
	builder = function()
		return {
			cmd = { scriptPath },
			args = { "build" },
			components = { "on_exit_set_status", "on_output_quickfix", "on_complete_notify" },
		}
	end,
})
