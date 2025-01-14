return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },

  --
  -- TODO:
  -- HACK:
  -- FIX:
  -- WARN:
  -- PERF:
  -- NOTE:
  -- TEST:
  --
  config = function()
    require('todo-comments').setup()

    vim.keymap.set('n', ']t', function()
      require('todo-comments').jump_next()
    end, { desc = 'Next todo comment' })

    vim.keymap.set('n', '[t', function()
      require('todo-comments').jump_prev()
    end, { desc = 'Previous todo comment' })

    -- You can also specify a list of valid jump keywords

    vim.keymap.set('n', ']t', function()
      require('todo-comments').jump_next { keywords = { 'ERROR', 'WARNING' } }
    end, { desc = 'Next error/warning todo comment' })

    vim.keymap.set('n', '<leader>tq', ':TodoQuickFix<cr>', { desc = 'shows todos in quickfix list' })

    vim.keymap.set('n', '<leader>tl', ':TodoLocList<cr>', { desc = 'shows todos in location list' })

    vim.keymap.set('n', '<leader>ts', ':TodoTelescope<cr>', { desc = 'shows todos in telescope' })
  end,
}
