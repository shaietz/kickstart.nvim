return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

    local Kickstart_Fugitive = vim.api.nvim_create_augroup('Kickstart_Fugitive', {})

    local autocmd = vim.api.nvim_create_autocmd
    autocmd('BufWinEnter', {
      group = Kickstart_Fugitive,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local buffer = vim.api.nvim_get_current_buf()
        local opts = { buffer = buffer, remap = false }
        vim.keymap.set('n', '<leader>p', function()
          vim.cmd.Git 'push'
        end, opts)

        vim.keymap.set('n', '<leader>P', function()
          vim.cmd.Git { 'pull', '--rebase' }
        end, opts)

        vim.keymap.set('n', '<leader>t', ':Git push -u origin ', opts)
      end,
    })

    vim.keymap.set('n', 'gu', '<cmd>diffget //2<CR>')
    vim.keymap.set('n', 'gh', '<cmd>diffget //3<CR>')
  end,
}

-- vim: ts=2 sts=2 sw=2 et
