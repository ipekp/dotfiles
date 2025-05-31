return {
  { -- ssh tunneling and copying to clipboard
    "ojroques/vim-oscyank",
  },
  { -- git plugin
    "tpope/vim-fugitive",
  },
  { -- autotag
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
