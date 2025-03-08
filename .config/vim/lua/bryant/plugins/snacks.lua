return {
	'folke/snacks.nvim',
	lazy = false,
	priority = 1000,
	opts = {
		win = { enabled = false },
		dim = { enabled = false },
		git = { enabled = false },
		util = { enabled = false },
		debug = { enabled = false },
		image = { enabled = false },
		notify = { enabled = false },
		layout = { enabled = false },
		toggle = { enabled = false },
		rename = { enabled = false },
		scroll = { enabled = false },
		scratch = { enabled = false },
		animate = { enabled = false },
		profiler = { enabled = false },
		notifier = { enabled = false },
		terminal = { enabled = false },
		bufdelete = { enabled = false },
		gitbrowse = { enabled = false },

		scope = { enabled = true },
		indent = { enabled = true },
		lazygit = { enable = true },
		bigfile = { enabled = true },
		quickfile = { enabled = true },
		zen = {
			enabled = true,
			toggles = { dim = false },
			win = { width = 100, backdrop = { transparent = false, blend = 99 } },
		},
		styles = {
			float = {
				height = 0.8,
				width = 0.8,
			},
		},
	},
	keys = {
		{
			'<leader>gg',
			function()
				Snacks.lazygit()
			end,
			desc = 'Snacks lazygit',
		},
		{
			'<leader>G',
			function()
				Snacks.lazygit.log()
			end,
			desc = 'Snacks lazygit log',
		},
		{
			'zm',
			function()
				Snacks.zen()
			end,
			desc = 'Snacks zen',
		},
	},
}
