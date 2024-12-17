-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'catppuccin-frappe'
      -- transparent bg stuff (catppuccin theme already in play at terminal level)
      vim.opt.background = 'dark' -- or 'light'
      vim.cmd [[
          highlight Normal guibg=NONE ctermbg=NONE
          highlight NonText guibg=NONE ctermbg=NONE
          highlight LineNr guibg=NONE ctermbg=NONE
          highlight SignColumn guibg=NONE ctermbg=NONE
          highlight EndOfBuffer guibg=NONE ctermbg=NONE
      ]]
    end,
  },
}
