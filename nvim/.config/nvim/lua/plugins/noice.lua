return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup", -- enables centered floating command line
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
      },
    })
  end,
}

