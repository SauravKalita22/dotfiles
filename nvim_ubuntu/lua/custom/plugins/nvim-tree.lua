return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      hijack_netrw = true,
      sync_root_with_cwd = true,
      renderer = {
        highlight_git = true,
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      view = {
        width = 28,
        side = "left",
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
      desc = "Toggle NvimTree (file explorer)",
    })
  end,
}
