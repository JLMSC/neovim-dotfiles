local api = vim.api
local opt = vim.opt

-- Disables these options when entering any file.
-- c: Auto-wrap comments, inserting the current comment
--     leader automatically.
-- r: Automatically insert the current comment leader
--     after hitting <ENTER> in Insert Mode.
-- o: Automatically insert the current comment leader
--     after hitting 'o' or 'O' in Normal mode.
api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    opt.formatoptions:remove({ "c", "r", "o" })
    -- Removes any expression which is evaluated to obtain the
    --  proper indent for a line.
    opt.indentexpr = ""
  end
})
