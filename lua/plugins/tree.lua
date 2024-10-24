return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    auto_reload_on_write = true,
    disable_netrw = true,
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      add_trailing = true,
      indent_width = 2,
      group_empty = true,
      indent_markers = {
        enable = true,
      },
    },
    filters = {
      dotfiles = false,
      git_ignored = false
    },
  }
}
