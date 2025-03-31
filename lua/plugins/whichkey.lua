return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)" },
  },
  opts = {
    delay = function(ctx)
      return ctx.plugin and 0 or 300
    end,
    spec = {
      -- Putting these as normal keymaps makes them not work when you type fast
      { "<leader>e",  group = "[E]dit "..vim.fn.fnamemodify(vim.fn.stdpath("config") --[[@as string]],           ":~") },
      { "<leader>E",  group = "[E]dit "..vim.fn.fnamemodify(vim.fn.stdpath("config") --[[@as string]].."/after", ":~") },
      { "<leader>s",  group = "[S]earch (Telescope)" },
      { "<leader>f",  group = "[F]ind (Harpoon)" },
      { "<leader>fd", group = "Harpooon [D]elete" },
      { "<leader>fr", group = "Harpooon [R]eplace" },
      { "<leader>x",  group = "Trouble" },
      { "<leader>d",  group = "Dap"},
    },
    win = {
      no_overlap = false,
    },
  },
}
