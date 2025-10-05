vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.colorcolumn = "88"
vim.opt.confirm = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.showmatch = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.wrap = false
vim.opt.list = true
vim.opt.listchars = {
    tab = "▸\\", -- a	a	a
    space = "·", -- a a a
    trail = "~", -- aaa 
}
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldcolumn = "0"
vim.o.foldmethod = "indent"

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions,globals"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function ()
        vim.opt.formatoptions:remove({ "c", "r", "o" })
        vim.opt_local.foldcolumn = "0"
    end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function ()
        vim.highlight.on_yank()
    end,
})
