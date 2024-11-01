return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = true,
    vim.keymap.set('n', '<leader>gs', ':Neogit<CR>', { silent = true, noremap = true }),
    vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true }),
    vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true }),
    vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true }),
    vim.keymap.set('n', '<leader>gB', ':Telescope git_branches<CR>', { silent = true, noremap = true }),
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()

      vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', {})
      vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', {})
    end,
  },
}
