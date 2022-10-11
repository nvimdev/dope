local helper = {}
local home = vim.env.HOME

function helper.get_config_path()
  local config = os.getenv('XDG_CONFIG_DIR')
  if not config then
    return home .. '/.config/nvim'
  end
  return config
end

function helper.get_data_path()
  local data = os.getenv('XDG_DATA_DIR')
  if not data then
    return home .. '/.local/share/nvim'
  end
  return data
end

function helper.get_cache_path()
  local cache = os.getenv('XDG_CACHE_DIR')
  if not cache then
    return home .. '/.cache/nvim/'
  end
end

return helper
