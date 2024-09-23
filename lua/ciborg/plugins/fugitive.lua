return {
    "tpope/vim-fugitive",
    config = function() 
        vim.keymap.set("n","<leader>gs",vim.cmd.Git)

        local Ciborg_Fugitive = vim.api.nvim_create_augroup("Ciborg_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd

        autocmd("BufWinEnter", {
            group = Ciborg_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                print("fugitive")
                local bufnr = vim.api.nvim_get_current_buf()
                local opts = {buffer = bufnr, remap = false}

                vim.keymap.set("n","<leader>p", function()
                    vim.cmd.Git('push')
                end, opts)

                vim.keymap.set("n","<leader>P", function()
                    vim.cmd.Git({'pull', "--rebase"})
                end, opts)
            end
        })
    end

}
