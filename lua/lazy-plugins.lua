-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'shai.plugins.which-key',

  require 'shai.plugins.telescope',

  require 'shai.plugins.lspconfig',

  require 'shai.plugins.conform',

  require 'shai.plugins.cmp',

  require 'shai.plugins.tokyonight',

  require 'shai.plugins.todo-comments',

  require 'shai.plugins.mini',

  require 'shai.plugins.treesitter',

  -- require 'shai.plugins.indent_line',

  require 'shai.plugins.lint',

  require 'shai.plugins.autopairs',

  require 'shai.plugins.neo-tree',

  require 'shai.plugins.fugitive',

  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
