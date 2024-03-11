return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    -- Use Telescope for searching files and searching something across files
    local builtin = require("telescope.builtin")

    -- Ctrl + p to find files using fuzzy matching
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})

    -- Ctrl + f to live grep through files (Search for some code across files)
    vim.keymap.set("n", "<C-f>", builtin.live_grep, {})
  end
}