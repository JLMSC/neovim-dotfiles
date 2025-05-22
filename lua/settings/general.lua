local g = vim.g
local opt = vim.opt

-- Maps <Leader> to <SPACE>.
g.mapleader = " "
g.maplocalleader = " "

-- Doesn't use a swapfile for the buffer.
opt.swapfile = false
-- Doesn't make a backup before overwriting a file.
opt.backup = false
opt.writebackup = false
-- When off a buffer is unloaded when it is abandoned.
opt.hidden = false
-- Enables mouse support for all modes.
opt.mouse = 'a'
-- Uses the clipboard register '*', same as system.
opt.clipboard = "unnamedplus"
-- Make command-line have 2 screen line.
opt.cmdheight = 2
-- Highlight column 79.
opt.colorcolumn = "79"
-- Avoid certain operations raise a dialog
--  when exiting unsaved files.
opt.confirm = true
-- Highlight the text line of the cursor.
opt.cursorline = true
-- Ignore case in search patterns.
opt.ignorecase = true
-- Print the line number in front of each line.
opt.number = true
-- Set the cursor line to be always in the middle
--  of the window, except at the start or end of the file.
opt.scrolloff = 999
-- l: Use "999L, 888B" instead of "999 lines, 888 bytes"
-- m: Use "[+]" instead of "[Modified]"
-- r: Use "[RO]" instead of "[readonly]"
-- t: Truncate file message at the start if it
--  is too long to fit on the command-line.
-- T: Truncate other messages in the middle if
--  they are too long to fit on the command-line.
opt.shortmess = "lmrtT"
-- When a bracket is inserted, briefly jump to the matching one.
opt.showmatch = true
-- Splitting a window will put the new window below the
--  current one.
opt.splitbelow = true
-- Splitting a window will put the new window right of
--  the current one.
opt.splitright = true
-- Enables 24-bit RGB color in the TUI.
opt.termguicolors = true
-- The title of the window will be set to the value of
--  'titlestring' (if it is not empty).
opt.title = true
-- Avoid breaking lines if it is longer than the width
--  of the window.
opt.wrap = false
-- Put a message on the last line showing current mode.
opt.showmode = true
-- Show non-printable characters.
opt.list = true
opt.listchars = {
  tab = "▸\\", -- a	a	a
  space = "·", -- a a a
  trail = "~", -- aaa 
}
-- NOTE: Used by 'lua/lsp/completion.lua'.
-- A list of options for Insert mode completion.
--  menuone: Use the popup menu also when there is only
--   one match. Useful when there is additional information
--   about the match, e.g., what file it comes from.
--  noinsert: Do not insert any text for a match until
--   the user selects a match from the menu.
--  noselect: Same as 'noinsert', except that no menu item
--   is pre-selected.
opt.completeopt = "menuone,noinsert,noselect"
