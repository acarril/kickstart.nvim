return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'EdenEast/nightfox.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Nightfox variant
    local style = 'nightfox'

    -- Returns the palette of the specified colorscheme
    -- NOTE: see https://github.com/EdenEast/nightfox.nvim/blob/main/usage.md#palette
    local palette = require('nightfox.palette').load(style)

    -- Configure colorscheme with transparent background plus some tweaks
    -- NOTE: this should work with opts = {}? I think `config` runs before `opts`
    -- so the colorscheme is set before passing opts.
    require('nightfox').setup {
      -- bg transparency for seamless integration with terminal colors
      options = { transparent = true },

      -- however, if terminal opacity < 1, some highlights are not visible
      groups = {
        all = {
          -- Telescope borders are too dim to be readable
          TelescopeBorder = { fg = palette.fg3 },
        },
        nightfox = {
          -- Change Visual highlight to differentiate from cursorline highline
          Visual = { bg = palette.bg1 }, -- default: `bg1`; good: `sel1`, `bg0`
        },
      },
    }

    -- Load the colorscheme here
    vim.cmd.colorscheme(style)

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=italic'
  end,
}
