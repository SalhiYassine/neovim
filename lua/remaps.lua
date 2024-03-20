vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

local set = vim.opt
set.number = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
vim.wo.relativenumber = true
set.mouse = "a"
set.showmode = true
set.clipboard = "unnamedplus"
set.breakindent = true
set.undofile = true
set.ignorecase = true
set.smartcase = true
set.signcolumn = "yes"
set.updatetime = 250
set.timeoutlen = 300
set.splitright = true
set.splitbelow = true
set.list = true
set.inccommand = "split"
set.cursorline = true
set.scrolloff = 20
set.hlsearch = true
vim.opt.list = true

local space = "·"
vim.opt.listchars:append({
	tab = "│ ",
	multispace = space,
	lead = space,
	trail = space,
	nbsp = space,
})

local mapper = vim.keymap
mapper.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
mapper.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
mapper.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
mapper.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
mapper.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
mapper.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

mapper.set("n", "<C-b>", "<cmd>e<CR>")

mapper.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
mapper.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
mapper.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
mapper.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

mapper.set("n", "L", "$", { desc = "Move to the end of the line" })
mapper.set("v", "L", "$", { desc = "Move to the end of the line" })

mapper.set("n", "H", "^", { desc = "Move to the start of the line" })
mapper.set("v", "H", "^", { desc = "Move to the start of the line" })

mapper.set("v", "J", ":m '>+1<CR>gv-gv", { desc = "Move selected lines down" })
mapper.set("v", "K", ":m '<-2<CR>gv-gv", { desc = "Move selected lines up" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
