return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            {
                "<leader>-",
                "<cmd>Oil<cr>",
                desc = "Open parent directory in Oil"
            },
        },
    }
}
