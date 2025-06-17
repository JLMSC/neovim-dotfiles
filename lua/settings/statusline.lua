local devicons_ok, devicons = pcall(require, "nvim-web-devicons")
if not devicons_ok then
  devicons = nil
end

-- Customizes the statusline.
-- NOTE: All the highlight groups are defined in 'lua/plugins/catppuccin.lua'
local function statusline()

  -- Places the branch name, added, removed and changed info from
  --  gitsigns at the center. Uses 'SLGitHead', 'SLGitAdded',
  --  'SLGitRemoved', 'SLGitChanged' as a highlight group.
  -- NOTE: This uses 'lewis6691/gitsigns.nvim' plugin.
  -- NOTE: The symbol used in 'head' is from NerdFonts.
  local function git_status()
    local gsd = vim.b.gitsigns_status_dict
    if not gsd or not gsd.head then
      return ""
    end
    local parts = { "%#SLGitHead# " .. gsd.head }
    if gsd.added and gsd.added > 0 then
      table.insert(parts, "%#SLGitAdded#+" .. gsd.added)
    end
    if gsd.removed and gsd.removed > 0 then
      table.insert(parts, "%#SLGitRemoved#-" .. gsd.removed)
    end
    if gsd.changed and gsd.changed > 0 then
      table.insert(parts, "%#SLGitChanged#~" .. gsd.changed)
    end
    return table.concat(parts, " ")
  end

  -- Uses both the icon and its respective highlight group (from the
  --  nvim-web-devicons plugin) to display it in the statusline.
  -- NOTE: This uses 'nvim-tree/nvim-web-devicons' plugin.
  local function file_icon()
    if not devicons then
      return ""
    end
    local fname = vim.fn.expand("%:t")
    local ext = vim.fn.expand("%:e")
    local icon, icon_hl = devicons.get_icon(fname, ext, { default = true })
    if icon and icon_hl then
      return "%#" .. icon_hl .. "#" .. icon
    end
    return ""
  end

  return table.concat({
    -- Path to the file in the buffer as typed or relative to
    --  current directory, it will be truncated from the beginning
    --  if it is too long. Uses 'SLFile. as a highlight group.
    "%#SLFile# %<%f ",
    -- Creates a group: %m - Modified "[+]"; %r - Readonly "[RO]";
    --  %h - Help Buffer "[help]"; %w - Preview Window "[Preview]";
    --  Uses 'SLFlag' as a highlight group.
    "%#SLFlag#%(%m%r%h%w%)",
    "%=",
    git_status(),
    "%=",
    -- Percentage through the file in lines as in 'Ctrl-G'.
    --  Uses 'SLFile' as a highlight group.
    "%#SLFile#%p%% ",
    file_icon(),
    " ",
    -- Creates a group: %l - Line Number; %c - Column Number.
    --  Uses 'SLPosition' as a highlight group.
    "%#SLPosition#%([%l:%c]%) ",
  })
end

vim.o.statusline = "%!v:lua.statusline()"
_G.statusline = statusline
