-- https://github.com/karb94/neoscroll.nvim
return {
  "karb94/neoscroll.nvim",
  config = function()
    local neoscroll = require("neoscroll")
    neoscroll.setup({
      mappings = {
        "<C-u>", -- Move cursor and screen up 1/2 page.
        "<C-d>", -- Move cursor and screen down 1/2 page.
        "<C-b>", -- Move screen up one page (cursor to last line).
        "<C-f>", -- Move screen down one page (cursor to first line).
        "<C-y>", -- Move screen up one line (without moving cursor).
        "<C-e>", -- Move screen down one line (without moving cursor).
        "zt",    -- Position cursor on top of the screen.
        "zz",    -- Center cursor on screen.
        "zb"     -- Position cursor on bottom of the screen.
      },
      hide_cursor = false,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      duration_multiplier = 1.0,
      easing = "cubic",
      ignored_events = {
        "WinScrolled", "CursorMoved"
      }
    })
    local keymap = {
      ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 100 }) end;
      ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 100 }) end;
      ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 100 }) end;
      ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 100 }) end;
      ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
      ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
      ["zt"]    = function() neoscroll.zt({ half_win_duration = 100 }) end;
      ["zz"]    = function() neoscroll.zz({ half_win_duration = 100 }) end;
      ["zb"]    = function() neoscroll.zb({ half_win_duration = 100 }) end;
    }
    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end
}
