-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { -- Bufferline: shows open buffers as tabs at the top (VS Code style)
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VimEnter',
    opts = {
      options = {
        separator_style = 'slant',
        show_buffer_close_icons = true,
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Explorer',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    },
    keys = {
      { '<S-h>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Previous buffer' },
      { '<S-l>', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
      { '<leader>bd', '<cmd>bdelete<CR>', desc = '[B]uffer [D]elete' },
      { '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', desc = '[B]uffer close [O]thers' },
    },
  },
  { -- kanagawa.nvim (installed, not active by default)
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {}
    end,
  },
  { -- gruvbox.nvim (installed, not active by default)
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {}
    end,
  },
  { -- cyberdream.nvim (installed, not active by default)
    'scottmckendry/cyberdream.nvim',
    priority = 1000,
    config = function()
      require('cyberdream').setup {}
    end,
  },
}