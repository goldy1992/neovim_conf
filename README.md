# Neovim Config
- Current Neovim version: `0.11.2` ([GitHub](https://github.com/neovim/neovim/releases/tag/v0.11.2))
- OS Windows 11
- Preinstalled: [ripgrep](https://github.com/BurntSushi/ripgrep), mingw (with Chocolatey).


## Plugins
| Plugin | Description | Requirements |
|----------|-----------|------------|
|[folke/lazy.nvim](https://github.com/folke/lazy.nvim.git)| The package manger | - |
|[saghen/blink.cmp](https://github.com/Saghen/blink.cmp) | Autocomplete floating window | - |
|[echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim)| UI mini icons to show the VIM Mode| - |
|[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | The Neovim theme | - |
|[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)| Parses the code tree | [MingGW](https://sourceforge.net/projects/mingw) for the [GCC](https://gcc.gnu.org/) compiler to build tree parsers. |
|[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)| File/Text/Help Documentation finder | <ul> <li>[ripgrep](https://github.com/BurntSushi/ripgrep) installed. (Can be done on windows via [Chcolatey](https://chocolatey.org), i.e. `choco install ripgrep`</li><li>[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)</li><li>[nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim), for Windows requires MSVC ([Visual Studio 2022 + Windows Build Tools](https://visualstudio.microsoft.com/vs/community/)) and [CMake v3.2.0+](https://cmake.org/download/) installed on your Path</li> </ul> |
|[nvim-tree/nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) | File Tree explorer | [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) |
|[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Plugin to manage [LSP config](https://en.wikipedia.org/wiki/Language_Server_Protocol) for each programming language | See [LSP Config](#lsp-config) |


## Key Mapping and Commands
| Key | Description |
|----|-----|
|`<space>` | Leader key |
|`<Esc><C-\><C-n>` | Escape terminal mode! |


| Command | Description |
|--------|--------|
|`:Lazy`|opens Lazy.nvim package manager window |
|`:Mason`|opens the Lsp config window|

## Plugin Key Mappings and Commands

### nvim-tree
| Command | Description |
|--------|--------|
|`'n' <leader>e` | Toggle the tree |
|`'n' g?`| toggles the help diaglon with a list of nvim-tree commands. |

## LSP Config
- TODO: document cpp/java etc
