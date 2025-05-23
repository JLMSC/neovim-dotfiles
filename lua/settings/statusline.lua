local opt = vim.opt
local api = vim.api

-- Customizes the statusline.
-- NOTE: All the highlight groups are defined in 'lua/plugins/catppuccin.lua'
opt.statusline = table.concat({
  -- Path to the file in the buffer as
  --  typed or relative to current
  --  directory, it will be truncated
  --  from the beginning if it is too
  --  long.
  -- Uses 'SLFile' as a highlight group.
  "%#SLFile#",
  " %<%f ",
  -- Creates a group:
  --  %m - Modified "[+]"
  --  %r - Readonly "[RO]"
  --  %h - Help buffer "[help]"
  --  %w - Preview window "[Preview]"
  -- Uses 'SLFlag' as a highlight group.
  "%#SLFlag#",
  "%(%m%r%h%w%) ",
  -- NOTE: These uses 'lewis6691/gitsigns.nvim' plugin.
  -- NOTE: The symbol used in 'head' is from fonts like NerdFont.
  -- Places the branch name, added, removed and changed
  --  from gitsigns on the center.
  -- Uses 'SLGitHead', 'SLGitAdded', 'SLGitRemoved'
  --  'SLGitChanged' as a highlight group.
  "%=",
  "%#SLGitHead#",
  "%{%get(get(b:,\"gitsigns_status_dict\",{}),\"head\",\"\") != \"\" ? \" \" . get(get(b:,\"gitsigns_status_dict\",{}),\"head\",\"\") : \"\"%} ",
  "%#SLGitAdded#",
  "%{%get(get(b:,\"gitsigns_status_dict\",{}),\"added\",0) > 0 ? \"+\" . get(get(b:,\"gitsigns_status_dict\",{}),\"added\",0) : \"\"%} ",
  "%#SLGitRemoved#",
  "%{%get(get(b:,\"gitsigns_status_dict\",{}),\"removed\",0) > 0 ? \"-\" . get(get(b:,\"gitsigns_status_dict\",{}),\"removed\",0) : \"\"%} ",
  "%#SLGitChanged#",
  "%{%get(get(b:,\"gitsigns_status_dict\",{}),\"changed\",0) > 0 ? \"~\" . get(get(b:,\"gitsigns_status_dict\",{}),\"changed\",0) : \"\"%} ",
  "%=",
  -- Percentage through file in lines as in Ctrl-G.
  -- Uses 'SLFile' as a highlight group.
  "%#SLFile#",
  "%p%% ",
  -- Type of file in buffer.
  -- Uses 'SLFile' as a highlight group.
  "%#SLFile#",
  "[%Y] ",
  -- Creates a group:
  --  %l - Line number.
  --  %c - Column number.
  -- Uses 'SLPosition' as a highlight group.
  "%#SLPosition#",
  "%([%l:%c]%) ",
})
