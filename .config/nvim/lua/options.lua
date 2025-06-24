-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.expandtab = false
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.breakindent = false

-- Save undo history
vim.opt.undofile = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.swapfile = false
vim.opt.backup = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = false
vim.opt.listchars = { tab = "=> ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.scrolloff = 8

vim.opt.confirm = true
vim.opt.colorcolumn = "80"

