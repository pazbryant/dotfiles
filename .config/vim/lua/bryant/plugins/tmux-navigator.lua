return {
	'christoomey/vim-tmux-navigator',
	cmd = {
		'TmuxNavigateLeft',
		'TmuxNavigateDown',
		'TmuxNavigateUp',
		'TmuxNavigateRight',
		'TmuxNavigatePrevious',
	},
	keys = {
		{ '<M-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Tmux left' },
		{ '<M-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Tmux down' },
		{ '<M-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Tmux up' },
		{ '<M-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Tmux right' },
	},
}
