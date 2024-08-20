return { -- tab manager
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false

    vim.keymap.set('n', '<M-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Select previous tab' })
    vim.keymap.set('n', '<M-.>', '<Cmd>BufferNext<CR>', { desc = 'Select next tab' })
    vim.keymap.set('n', '<M-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move tab to the left' })
    vim.keymap.set('n', '<M->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move tab to the right' })
    vim.keymap.set('n', '<C-c>', '<Cmd>BufferClose<CR>', { desc = 'Close current tab' })
    vim.keymap.set('n', '<C-x>', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = 'Close all but current tab' })
    vim.keymap.set('n', '<leader>tp', '<Cmd>BufferPick<CR>', { desc = 'Tab picker mode' })
  end,

  opts = {
    animation = true,
  },
}
