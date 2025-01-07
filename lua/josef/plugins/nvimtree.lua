return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local function on_attach(bufnr)
            local api = require "nvim-tree.api"
            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.set('n', '?', api.tree.toggle_help, { desc = "nvim-tree: Help", buffer = bufnr, silent = true, nowait = true })
        end

        nvimtree.setup({
            on_attach = on_attach,
            respect_buf_cwd = true,
            sync_root_with_cwd = true,
            hijack_cursor = true,
            view = {
                width = 30,
                relativenumber = false,
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
            },
            actions = {
                open_file = {
                    quit_on_open = false
                },
                change_dir = {
                    global = true
                }
            },
            git = {
                ignore = true
            },
            filters = {
                dotfiles = true,
                git_ignored = true
            },
            update_focused_file = {
                enable = true,
            },
            diagnostics = {
                enable = true,
                show_on_dirs = true,
                show_on_open_dirs = true,
                debounce_delay = 500,
            }
        })

        vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer"})
    end
}
