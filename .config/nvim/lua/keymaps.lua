-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })
 
-- search buffers in Telescope (this is also provided by <leader><leader>
vim.keymap.set("n", "<leader>sb", function ()
	vim.cmd.Telescope("buffers")
	end , { desc = "[S]earch [B]uffers (remember double leader)" })

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>", opts)
vim.keymap.set("n", "<Left>", ":bprevious<CR>", opts)
-- Navigate quickfix
vim.keymap.set("n", "<Up>", ":cprev<CR>", opts)
vim.keymap.set("n", "<Down>", ":cnext<CR>", opts)
vim.keymap.set("n", "<M-k>", ":cprev<CR>", opts)
vim.keymap.set("n", "<M-j>", ":cnext<CR>", opts)
vim.keymap.set("n", "<M-;>", ":cc<CR>", opts)

-- Keybinds to make split navigation easi, { desc = "Move focus to the left window" })
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", 
	{ desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", 
	{ desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", 
	{ desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", 
	{ desc = "Move focus to the upper window" })

-- open directory where file is? (open pwd -- project view)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "open pwd netrw" })

-- center cursor after motion and joins and search finds
vim.keymap.set("n", "J", "mzJ`z", { desc = "join lines and stay at end of line 1" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "center cursor" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- becuase centering and scrolloff makes H and L useless, remap to 
-- beginning and end of text in line
vim.keymap.set({ "n", "x", "o" }, "H", "^", opts)
vim.keymap.set({ "n", "x", "o" }, "L", "g_", opts)


-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move selected line / block of text in visual mode

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)


-- paste over text, and keep old text in paste buffer 
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "paste, but don't change paste buffer" })

-- copy to system clipboard (yank or delete)
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "yank to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "yank to system clipboard" })
vim.keymap.set("n", "<leader>P", "\"+p", { desc = "paste from system clipboard" })

vim.keymap.set("n", "<leader>d", "\"_d", { desc = "throw away deleted text (not in register)" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "throw away deleted text (not in register)" })

-- source luasnips
vim.keymap.set("n", "<leader>st", '<cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>')
