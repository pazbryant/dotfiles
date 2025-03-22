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
		{ '<C-h>', '<cmd>TmuxNavigateLeft<cr>', desc = 'Tmux left' },
		{ '<C-j>', '<cmd>TmuxNavigateDown<cr>', desc = 'Tmux down' },
		{ '<C-k>', '<cmd>TmuxNavigateUp<cr>', desc = 'Tmux up' },
		{ '<C-l>', '<cmd>TmuxNavigateRight<cr>', desc = 'Tmux right' },
	},
}
