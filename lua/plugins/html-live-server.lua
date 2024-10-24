return {
  "barrett-ruth/live-server.nvim",
  lazy = false,
  build = "npm add -g live-server",
  cmd = {"LiveServerStart", "LiveServerStop"},
  config = true,
  args = { '--port=7000', '--browser=firefox' }
}
