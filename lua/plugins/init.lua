-- NOTE: Gets every file inside 'lua/plugins/' and returns them as a list.
local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local plugins = {}

local fd = vim.loop.fs_scandir(plugins_dir)
if fd then
  while true do
    local name = vim.loop.fs_scandir_next(fd)
    if not name then
      break
    end
    if name:sub(-4) == ".lua" and name ~= "init.lua" then
      local module_name = "plugins." .. name:sub(1, -5)
      table.insert(plugins, module_name)
    end
  end
end

return plugins
