return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = true,
            auto_restore_last_sesion = false,
            auto_create = false,
            auto_save = true,
            auto_session_supress_dirs = { "~/" },
            cwd_change_handling = false,
            lsp_stop_on_restore = false,
            post_restore_cmds = {
                function()
                    local nvim_tree_api = require('nvim-tree.api')
                    nvim_tree_api.tree.open()
                    nvim_tree_api.tree.change_root(vim.fn.getcwd())
                    nvim_tree_api.tree.reload()
                end
            },
        })

        vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for CWD" })
        vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session" })
        vim.keymap.set("n", "<leader>sl", "<cmd>SessionSearch<CR>", { desc = "List sessions" })
    end,
    opts = {
        session_lens = {
            load_on_setup = true,
            previewer = false,
            mappings = {
                delete_session = { "i", "<C-D>" },
                alternate_session = { "i", "<C-S>" },
                copy_session = { "i", "<C-Y>" },
            },
            theme_conf = {
                border = true,
            },
        }
    }
}
