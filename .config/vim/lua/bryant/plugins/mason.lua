return {
	'williamboman/mason.nvim',
	dependencies = 'WhoIsSethDaniel/mason-tool-installer.nvim',
	branch = 'main',
	cmd = 'Mason',
	config = function()
		local ensure_installed = {
			-- lua
			'stylua',
			'luacheck',

			-- web dev
			'prettierd',
			'prettier',

			-- bash
			'shfmt',
			'shellcheck',
			'shellharden',

			-- c
			'clang-format',

			-- golang
			'gofumpt',
			'goimports',
			'golangci-lint',

			-- python
			'black',
			'ruff',
			'isort',

			-- markdown
			'alex',
			'markdownlint',

			-- javascript
			'eslint_d',

			-- toml
			'taplo',
		}
		require('mason').setup({
			ui = {
				border = 'single',
			},
		})
		require('mason-tool-installer').setup({
			ensure_installed = ensure_installed,
		})
	end,
}
