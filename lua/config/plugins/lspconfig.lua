return {
    "neovim/nvim-lspconfig",
    dependencies= {
		"folke/neoconf.nvim"
    },
    config = function()
	vim.lsp.config("clangd", {
	    cmd = { "clangd",
	    "--query-driver=/C:/dev/apps/Microsoft\\ Visual\\ Studio/2022/Community/VC/Tools/MSVC/14.44.35207/bin/Hostx64/x64/cl.exe"
	}
    })
    
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    require("lspconfig").lua_ls.setup { capabilites = capabilities }

    vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
            local c = vim.lsp.get_client_by_id(args.data.client_id)
            if not c then return end

            if vim.bo.filetype == "lua" then
                -- Format the current buffer on save
                vim.api.nvim_create_autocmd('BufWritePre', {
                    buffer = args.buf,
                    callback = function()
                        vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                    end,
                })
            end
        end,
    })
	end
}
