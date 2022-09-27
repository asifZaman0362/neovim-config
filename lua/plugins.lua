return require("packer").startup(function(use)
    use "nvim-treesitter/nvim-treesitter"
    use "tribela/vim-transparent"
    require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "lua", "rust" },
        sync_install = true,
        highlight = {
            enable = true,
        }
    }
    use "wbthomason/packer.nvim"
    use {
        "ellisonleao/gruvbox.nvim", as = gruvbox,
    }
    use {
        "mattn/emmet-vim", as = emmet,
    }
    require("gruvbox").setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = true,
        strikethrough = true,
        contrast = "medium",
        transparent_mode = true
    })
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    require("nvim-tree").setup()
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    }
    require"mason".setup{}
    use {
        "vim-airline/vim-airline",
        "vim-airline/vim-airline-themes",
    }
    use "neovim/nvim-lspconfig"
    require"lspconfig".rust_analyzer.setup{}
    require"lspconfig".clangd.setup{}
    use "simrat39/rust-tools.nvim"
    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
end)
