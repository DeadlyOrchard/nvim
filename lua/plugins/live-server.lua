return {
  "ngtuonghy/live-server-nvim",
  lazy = true,
  opts = {
    custom = {
        "--port=8080",
        "--no-css-inject",
        "--browser=firefox",
    },
    serverPath =  vim.fn.stdpath('data') .. "/live-server/",
    open = "folder", -- folder|cwd     --default
  }
}

