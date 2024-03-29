return {
  {
     "nvim-telescope/telescope.nvim",
     dependencies = {
             "nvim-lua/plenary.nvim",
             "nvim-lua/popup.nvim",
     },
     config = function()
       require("cfg.telescope")
     end,
   },
   {
     "nvim-telescope/telescope-fzf-native.nvim",
     dependencies = "nvim-telescope/telescope.nvim",
     config = function()
       require("telescope").load_extension("fzf")
     end,
     build = "make",
   },
   {
     "nvim-telescope/telescope-github.nvim",
     dependencies = "nvim-telescope/telescope.nvim",
     config = function()
       require("telescope").load_extension("gh")
     end,
     event = 'CmdlineEnter',
   },
   {
     "cljoly/telescope-repo.nvim",
     dependencies = "nvim-telescope/telescope.nvim",
     config = function()
       require("telescope").load_extension("repo")
     end,
     event = 'CmdlineEnter',
   },
   -- {
   --   "luc-tielen/telescope_hoogle",
   --   dependencies = "nvim-telescope/telescope.nvim",
   --   config = function()
   --     require("telescope").load_extension("hoogle")
   --   end,
   --   event = 'CmdlineEnter',
   -- },
   {
     "nvim-telescope/telescope-ui-select.nvim",
     dependencies = "nvim-telescope/telescope.nvim",
     config = function()
       require("telescope").load_extension("ui-select")
     end,
   },
   {
     "nvim-telescope/telescope-file-browser.nvim",
     dependencies =  "nvim-telescope/telescope.nvim",
     config = function()
       require("telescope").load_extension("file_browser")
     end,
   },
        {
                  "AckslD/nvim-neoclip.lua",
                  dependencies = 'nvim-telescope/telescope.nvim',
                  config = function()
                          require('neoclip').setup()
                          -- require('neoclip')
                  end,
        },
}
