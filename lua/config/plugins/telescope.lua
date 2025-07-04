-- plugins/telescope.lua:
return { 
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 
	  'nvim-lua/plenary.nvim',
{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }

      },
	config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          }
        },
      }

      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>fw", require('telescope.builtin').live_grep)
      vim.keymap.set("n", "<space>en", function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
      vim.keymap.set("n", "<space>ep", function()
        require('telescope.builtin').find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
        }
      end)
    end
    }
}

