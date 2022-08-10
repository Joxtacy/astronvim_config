return function(config)
  local hl = require("core.status").hl
  local provider = require("core.status").provider
  local vi_mode_utils = require "feline.providers.vi_mode"

  -- new beginning of the statusline
  local new_left = {
    -- Adds a spacer
    { provider = provider.spacer(), hl = hl.mode() },
    -- Adds the name of the current vi mode
    {
      provider = function() return vi_mode_utils.get_vim_mode() end,
      hl = hl.mode(),
    },
  }

  -- extend the new left with the old left component
  vim.list_extend(new_left, config.components.active[1])
  -- set the new left as the  active component
  config.components.active[1] = new_left

  return config
end
