return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require("nvim-treesitter").install { 'ruby', 'lua', 'javascript', 'cpp' } 

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { 'ruby', 'lua', 'javascript', 'cpp' },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
