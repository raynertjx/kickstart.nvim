-- Persist the active colorscheme across restarts.
-- On startup: load() reads the last used theme from a cache file and reapplies it.
-- On any :colorscheme change: a ColorScheme autocmd writes the new name to the cache.
local M = {}

local cache_file = vim.fn.stdpath('data') .. '/theme.txt'
local default_theme = 'tokyonight-night'

function M.load()
  -- Persist every colorscheme change (including the one we are about to apply).
  vim.api.nvim_create_autocmd('ColorScheme', {
    group = vim.api.nvim_create_augroup('PersistColorscheme', { clear = true }),
    callback = function(args)
      local f = io.open(cache_file, 'w')
      if f then
        f:write(args.match)
        f:close()
      end
    end,
  })

  local theme = default_theme
  local f = io.open(cache_file, 'r')
  if f then
    theme = f:read('*l') or default_theme
    f:close()
  end

  -- pcall: the cached plugin may not be installed yet on a fresh machine.
  pcall(vim.cmd.colorscheme, theme)
end

return M