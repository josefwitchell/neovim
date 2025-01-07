return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    lazyload = false,
    keys = {
        { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
        { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
        { "[<Tab>", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
        { "]<Tab>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
        { "<C-w>", "<cmd>bd | bp<cr>", desc = "Delete Buffer (Close Tab)" },
    },
    opts = {
        options = {
            always_show_bufferline = true,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explore",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
            -- diagnostics = "nvim_lsp",
            -- diagnostics_indicator = function(count, level)
            --     local icon = level:match("error") and " " or " "
            --     return icon .. count
            -- end,
        },
    },
    config = function(_, opts)
        require("bufferline").setup(opts)
        -- Fix bufferline when restoring a session
        vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
            callback = function()
                vim.schedule(function()
                    pcall(nvim_bufferline)
                end)
            end,
        })
    end,
}
