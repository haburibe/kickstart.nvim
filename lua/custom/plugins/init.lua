-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'crispgm/nvim-tabline',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = { show_icon = true },
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    opts = {},
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'iceberg_dark',
      },
    },
  },
  {
    'cocopon/iceberg.vim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'iceberg'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'is0n/jaq-nvim',
    init = function()
      vim.keymap.set('n', '<leader>j', ':<C-u>Jaq<CR>', { silent = true })
    end,
    opts = {
      cmds = {
        -- Uses vim commands
        internal = {
          lua = 'luafile %',
          vim = 'source %',
        },

        -- Uses shell commands
        external = {
          markdown = 'glow %',
          python = 'python3 %',
          go = 'go run %',
          sh = 'sh %',
          elixir = 'elixir %',
          scheme = 'gosh %',
          typescript = 'deno run %',
        },
      },

      behavior = {
        -- Default type
        default = 'float',

        -- Start in insert mode
        startinsert = false,

        -- Use `wincmd` on startup
        wincmd = false,

        -- Auto-save files
        autosave = false,
      },

      ui = {
        float = {
          -- See ':h nvim_open_win'
          border = 'none',

          -- See ':h winhl'
          winhl = 'Normal',
          borderhl = 'FloatBorder',

          -- See ':h winblend'
          winblend = 0,

          -- Num from `0-1` for measurements
          height = 0.8,
          width = 0.8,
          x = 0.5,
          y = 0.5,
        },

        terminal = {
          -- Window position
          position = 'bot',

          -- Window size
          size = 10,

          -- Disable line numbers
          line_no = false,
        },

        quickfix = {
          -- Window position
          position = 'bot',

          -- Window size
          size = 10,
        },
      },
    },
  },
  -- skkeleton 設定がわからない
  -- {
  --   'vim-skk/skkeleton',
  --   dependencies = {
  --     'vim-denops/denops.vim',
  --   },
  --   init = function()
  --     vim.keymap.set({ 'i', 'c' }, [[<C-j]], [[<Plug>(skkeleton-toggle)]], { noremap = false })
  --   end,
  --   config = function()
  --     vim.cmd [[ call skkeleton#config({'globalDictionaries': ['~/.skk/SKK-JISYO.L', 'euc-jp']}) ]]
  --   end,
  -- },
}
