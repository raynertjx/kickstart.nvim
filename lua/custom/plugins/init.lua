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
        numbers = 'ordinal',
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
      { '<leader>bd', function() require('mini.bufremove').delete(0, false) end, desc = '[B]uffer [D]elete' },
      { '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', desc = '[B]uffer close [O]thers' },
      { '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>', desc = 'Go to buffer 1' },
      { '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>', desc = 'Go to buffer 2' },
      { '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>', desc = 'Go to buffer 3' },
      { '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>', desc = 'Go to buffer 4' },
      { '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>', desc = 'Go to buffer 5' },
      { '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>', desc = 'Go to buffer 6' },
      { '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>', desc = 'Go to buffer 7' },
      { '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>', desc = 'Go to buffer 8' },
      { '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>', desc = 'Go to buffer 9' },
      { '<leader>0', '<cmd>BufferLineGoToBuffer 10<CR>', desc = 'Go to buffer 10' },
    },
  },
  { -- Sidekick: Neovim UI host for AI CLIs (OpenCode, Claude, etc.)
    'folke/sidekick.nvim',
    opts = {
      nes = { enabled = false },
      cli = {
        mux = {
          backend = 'tmux',
          enabled = true,
          create = 'terminal',
        },
      },
    },
    keys = {
      { '<c-.>', function() require('sidekick.cli').focus() end, desc = 'Sidekick Focus', mode = { 'n', 't', 'i', 'x' } },
      { '<leader>aa', function() require('sidekick.cli').toggle() end, desc = 'Sidekick Toggle CLI' },
      { '<leader>as', function() require('sidekick.cli').select() end, desc = 'Select CLI' },
      { '<leader>ad', function() require('sidekick.cli').close() end, desc = 'Detach CLI Session' },
      { '<leader>at', function() require('sidekick.cli').send({ msg = '{this}' }) end, mode = { 'x', 'n' }, desc = 'Send This' },
      { '<leader>af', function() require('sidekick.cli').send({ msg = '{file}' }) end, desc = 'Send File' },
      { '<leader>av', function() require('sidekick.cli').send({ msg = '{selection}' }) end, mode = { 'x' }, desc = 'Send Visual Selection' },
      { '<leader>ap', function() require('sidekick.cli').prompt() end, mode = { 'n', 'x' }, desc = 'Sidekick Select Prompt' },
      { '<leader>ao', function() require('sidekick.cli').toggle({ name = 'opencode', focus = true }) end, desc = 'Sidekick Toggle OpenCode' },
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
  { -- rose-pine (installed, not active by default)
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      require('rose-pine').setup {}
    end,
  },
  { -- catppuccin (installed, not active by default)
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {}
    end,
  },
}