return {
  {
    'sainnhe/everforest',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.g.everforest_transparent_background = 1
      vim.g.everforest_background = 'hard'
      vim.cmd.colorscheme 'everforest'

      -- Color overrides
      -- vim.cmd [[highlight LineNr guibg='#3D484D']]
      -- vim.cmd [[highlight CursorLineNr  guibg='#3D484D']]
      -- vim.cmd [[highlight SignColumn guibg='#3D484D' guifg='green']]
      -- vim.cmd [[highlight CursorLineSign guibg='pink' guifg='green']]
      -- Gutter color groups
      -- local highlight_groups = {
      --   'LineNr',
      --   'CursorLineNr',
      --   'CursorLineSign',
      --   'SignColumn',
      --   'GitSignsAdd',
      --   'GitSignsChange',
      --   'GitSignsDelete',
      --   'GitSignsChangedelete',
      --   'GitSignsTopdelete',
      --   'GitSignsUntracked',
      --   'GitSignsAddNr',
      --   'GitSignsChangeNr',
      --   'GitSignsDeleteNr',
      --   'GitSignsChangedeleteNr',
      --   'GitSignsTopdeleteNr',
      --   'GitSignsUntrackedNr',
      --   'GitSignsAddLn',
      --   'GitSignsChangeLn',
      --   'GitSignsChangedeleteLn',
      --   'GitSignsUntrackedLn',
      --   'GitSignsAddPreview',
      --   'GitSignsDeletePreview',
      --   'GitSignsCurrentLineBlame',
      --   'GitSignsAddInline',
      --   'GitSignsDeleteInline',
      --   'GitSignsChangeInline',
      --   'GitSignsAddLnInline',
      --   'GitSignsChangeLnInline',
      --   'GitSignsDeleteLnInline',
      --   'GitSignsDeleteVirtLn',
      --   'GitSignsDeleteVirtLnInLine',
      --   'GitSignsVirtLnum',
      -- }
      --
      -- local gutter_bg = '#3D484D' -- Replace with your desired background color
      -- -- local fg_color = 'pink' -- Replace with your desired foreground color
      --
      -- for _, group in ipairs(highlight_groups) do
      --   vim.cmd(string.format('highlight %s guibg=%s', group, gutter_bg))
      -- end
    end,
  },
}
