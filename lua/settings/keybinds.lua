-- All keybinds must be defined here, so it will
--  be easier to locate or change them later.

-- NOTE: These are used used by 'lua/lsp/completion.lua'

-- Selects next completion.
vim.keymap.set("i", "<Tab>", function()
  return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
end, { expr = true, noremap = true })

-- Selects previous completion.
vim.keymap.set("i", "<S-Tab>", function()
  return vim.fn.pumvisible() == 1 and "<C-p>" or "<Tab>"
end, { expr = true, noremap = true })

-- Hides the completion menu but stay in Insert mode.
vim.keymap.set("i", "<Esc>", function()
  return vim.fn.pumvisible() == 1 and "<C-e>" or "<Esc>"
end, { expr = true, noremap = true })
