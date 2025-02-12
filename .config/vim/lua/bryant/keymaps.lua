local v = vim

local map = v.keymap.set

-- stylua: ignore start
-- custom keymaps
map('n', '<C-c>', 'ciw', { desc = 'Change inner word keybind' })
map({ 'n', 'v', 'o' }, 'H', '^', { desc = 'Start of the line' })
map({ 'n', 'v', 'o' }, 'L', 'g_', { desc = 'End of the line' })

-- exit all
map('n', '<leader>q', '<cmd>quitall!<cr>', { desc = 'Exit neovim and save all' })

-- paste without overwrite register
map("x", "<leader>p", [["_dP]], { desc = "Paste without overwrite register" })

-- copy without overwrite register
map({"n", "v"}, "<leader>y", [["+y]],{ desc="Copy without overwrite register" })
map("n", "<leader>Y", [["+Y]], { desc="Copy full line without overwrite register"})


-- delete without overwrite register
map({"n", "v"}, "<leader>d", "\"_d", { desc="Delete without overwrite register" })
map('n', "<leader>D", "\"_dd", { desc = "Delete full line without overwrite register" })

-- align manually
map('v', '<', '<gv', { desc = 'Better align items' })
map('v', '>', '>gv', { desc = 'Better align items' })

-- resise splits
map('n', '<M-l>', '<cmd>vertical resize +20<CR>', { desc = 'Increase split right' })
map('n', '<M-h>', '<cmd>vertical resize -20<CR>', { desc = 'Decrease split left' })
map('n', '<M-j>', '<cmd>horizontal resize -20<CR>', { desc = 'Decrease split down' })
map('n', '<M-j>', '<cmd>horizontal resize +20<CR>', { desc = 'Decrease split up' })

-- custom rename
map('n', '<leader>cr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quick fix list
map('n', '<c-q>', ':cope<CR>', { desc = 'Toggle quickfix list' })
map('n', ']q', ':cnext<CR>', { desc = 'Next quickfix item' })
map('n', '[q', ':cprev<CR>', { desc = 'Previous quickfix item' })

-- remove suspend keybind
map('n', '<C-z>', '<Nop>', { desc = "Disable neovim suspend" })

-- toggle spell
map('n', '<leader>ts', '<cmd>SpellToggle<CR>', { desc =  "Toggle spell" })
