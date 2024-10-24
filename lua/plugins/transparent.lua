return {
  "xiyaowong/transparent.nvim",
  config = function()
    vim.cmd[[
      :hi NvimTreeNormal guibg=NONE ctermbg=NONE
      :hi NvimTreeNormalNC guibg=NONE ctermbg=NONE
    ]]
  end
}
