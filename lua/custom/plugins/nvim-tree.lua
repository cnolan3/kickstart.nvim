return { -- nvim-tree, file explorer
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        adaptive_size = true,
      },
    }

    local api = require 'nvim-tree.api'

    vim.keymap.set('n', '<leader>nt', api.tree.toggle, { desc = 'Toggle file tree pane' })
  end,
}
