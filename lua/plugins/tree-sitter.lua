return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require("nvim-treesitter").install { 'ruby', 'lua', 'javascript' } 

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { 'ruby', 'lua', 'javascript' },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
