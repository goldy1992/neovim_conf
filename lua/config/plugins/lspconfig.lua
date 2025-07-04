return {
    "neovim/nvim-lspconfig",
    dependencies= {
--	"nvim-java/nvim-java"
    },
    config = function()
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
