return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- Create a custom 'nighfox' theme with solid bg in `lualine_c`
      -- NOTE: workaround for https://github.com/EdenEast/nightfox.nvim/issues/421
      local palette = require('nightfox.palette').load 'nightfox'
      local custom_nightfox = require 'lualine.themes.nightfox'
      custom_nightfox.normal.c.bg = palette.bg0

      -- Load lualine
      require('lualine').setup { options = { theme = custom_nightfox } }
    end,
  },
}
