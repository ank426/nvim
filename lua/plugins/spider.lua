return {
  "chrisgrieser/nvim-spider",
  keys = {
    { "w", function() require("spider").motion("w") end, mode = { "n", "o", "x" }, desc = "Spider-w" },
    { "e", function() require("spider").motion("e") end, mode = { "n", "o", "x" }, desc = "Spider-e" },
    { "b", function() require("spider").motion("b") end, mode = { "n", "o", "x" }, desc = "Spider-b" },
  },
  opts = {
    consistentOperatorPending = true,
    subwordMovement = false,
  },
}
