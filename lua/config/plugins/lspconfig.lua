return {
    "neovim/nvim-lspconfig",
    dependencies= {
    },
    config = function()
	vim.lsp.config("clangd", {
	    cmd = { "clangd",
	    "--query-driver=/C:/dev/apps/Microsoft\\ Visual\\ Studio/2022/Community/VC/Tools/MSVC/14.44.35207/bin/Hostx64/x64/cl.exe"
	}
    })
    
    end
    --[[  config = function()
   	require("lspconfig").jdtls.setup {
            -- Your nvim-java configuration goes here
            require("java").setup({
               root_markers = {
                 "settings.gradle",
                 "settings.gradle.kts",
                 "pom.xml",
                 "build.gradle",
                 "mvnw",
                 "gradlew",
                 "build.gradle",
                 "build.gradle.kts",
               },
            })
	}
	require("lspconfig").lua_ls.setup {}
    end,
    ]]
}
