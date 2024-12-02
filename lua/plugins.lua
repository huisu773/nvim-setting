local packer = require("packer")
packer.startup({
    function(use)
        use ("wbthomason/packer.nvim")
        use ("folke/tokyonight.nvim")
        use ({"nvim-tree/nvim-tree.lua", 
                requires = "nvim-tree/nvim-web-devicons" })
        use ({"akinsho/bufferline.nvim", 
                requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        use ({"nvim-lualine/lualine.nvim",
                requires = { "nvim-tree/nvim-web-devicons", opt = true }})
        use ("nvimdev/dashboard-nvim")
        use ({"nvim-telescope/telescope.nvim",
                requires = { "nvim-lua/plenary.nvim" } })
        use ("LinArcX/telescope-env.nvim")
        use ("ahmedkhalf/project.nvim")
    end,
    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        },
    }
})

pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

