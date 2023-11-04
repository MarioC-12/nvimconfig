return {
    "folke/lazy.nvim",

    { --LSPConfig
        "neovim/nvim-lspconfig",
        dependencies = {
          -- Automatically install LSPs to stdpath for neovim
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",

          -- Additional lua configuration, makes nvim stuff amazing
          "folke/neodev.nvim",
        },
    },
    { --Autocompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-path", "hrsh7th/cmp-buffer", "micangl/cmp-vimtex"
        },
    },
    { --TreeSitter
        "nvim-treesitter/nvim-treesitter",
        config = function()
          pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        }
    },
    "sakhnik/nvim-gdb", --Debugger

    --Rust
    "rust-lang/rust.vim",
    "simrat39/rust-tools.nvim",

    --Git
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    "lewis6991/gitsigns.nvim",

    --Beauty
    "navarasu/onedark.nvim", -- Theme inspired by Atom
    "marko-cerovac/material.nvim",
    "nvim-lualine/lualine.nvim", -- Fancier statusline
    { "lukas-reineke/indent-blankline.nvim", main = "isp" }, -- Add indentation guides even on blank lines
    { 'j-hui/fidget.nvim', tag = 'legacy', config = function() require("fidget").setup { } end },

    --Easier comments
    "numToStr/Comment.nvim",

    --Latex
    "lervag/vimtex",
    "KeitaNakamura/tex-conceal.vim",

    --Fuzzy search
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = 'make', cond = vim.fn.executable 'make' == 1 }
        }
    },

    -- Misc
    { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
    "tpope/vim-surround",
    "ggandor/lightspeed.nvim",
    "windwp/nvim-autopairs",
    "akinsho/toggleterm.nvim",

    -- Copilot
    -- "github/copilot.vim",
}
