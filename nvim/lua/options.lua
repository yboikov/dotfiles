vim.diagnostic.config({
  virtual_text = true,       -- show inline messages
  signs = true,              -- show signs in the gutter
  underline = true,          -- underline the problem
  update_in_insert = false,
  severity_sort = true,
})
vim.o.ignorecase = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.mouse = ""
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.undofile = true
vim.o.undolevels = 10000
vim.o.updatetime = 200
vim.o.scrolloff = 20
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.title = true
vim.o.titlelen = 0
vim.o.titlestring = "%t"

vim.o.completeopt = "menu,menuone,noselect"

vim.g.autoformat = true
vim.g.mapleader = " "

vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30
vim.g.netrw_banner = 0
