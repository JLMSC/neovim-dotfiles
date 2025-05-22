local opt = vim.opt

-- NOTE: These are general indentation that I use for almost any file,
--  there are also indentation settings inside 'after/ftplugin' for
--  specific programming languages. Make sure to change them it they
--  doesn't suit your needs.

-- Number of spaces that a tab in the file counts for.
opt.tabstop = 2
-- Number of spaces to use for each step of indent.
opt.shiftwidth = 2
-- Number of spaces that a tab counts for while performing
--  editing operations, like tab or bs.
opt.softtabstop = 2
-- Use space instead of tab when indenting with '>' or '<'.
opt.expandtab = true
-- Copy indent from current line when starting a new line.
opt.autoindent = true
-- Removes smart autoindenting when starting a new line.
opt.smartindent = false
