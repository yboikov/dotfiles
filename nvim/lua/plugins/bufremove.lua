return {
  "echasnovski/mini.bufremove",
  version = "*",
  config = function()
    -- Normal delete (safe)
    vim.keymap.set("n", "<leader>x", function()
      require("mini.bufremove").delete(0, false)
    end, { desc = "Close current buffer" })

    -- Force delete (unsaved changes)
    vim.keymap.set("n", "<leader>X", function()
      require("mini.bufremove").delete(0, true)
    end, { desc = "Force close buffer" })
  end,
}
