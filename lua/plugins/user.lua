-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  "nvim-telescope/telescope.nvim",

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      -- opts.section.header.val = {
      --   " █████  ███████ ████████ ██████   ██████",
      --   "██   ██ ██         ██    ██   ██ ██    ██",
      --   "███████ ███████    ██    ██████  ██    ██",
      --   "██   ██      ██    ██    ██   ██ ██    ██",
      --   "██   ██ ███████    ██    ██   ██  ██████",
      --   " ",
      --   "    ███    ██ ██    ██ ██ ███    ███",
      --   "    ████   ██ ██    ██ ██ ████  ████",
      --   "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
      --   "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
      --   "    ██   ████   ████   ██ ██      ██",
      -- }
      local logo = {
        [[  ███       ███  ]],
        [[  ████      ████ ]],
        [[  ████     █████ ]],
        [[ █ ████    █████ ]],
        [[ ██ ████   █████ ]],
        [[ ███ ████  █████ ]],
        [[ ████ ████ ████ ]],
        [[ █████  ████████ ]],
        [[ █████   ███████ ]],
        [[ █████    ██████ ]],
        [[ █████     █████ ]],
        [[ ████      ████ ]],
        [[  ███       ███  ]],
        [[                    ]],
        [[  N  E  O  V  I  M  ]],
      }
      opts.section.header.val = logo
      -- no Idea how it works exaclty, try n error with distinguishable colors lol
      opts.section.header.opts.hl = {
        {
          { "AlphaNeovimLogoBlue", 0, 0 },
          { "AlphaNeovimLogoGreen", 1, 14 },
          { "AlphaNeovimLogoBlue", 23, 34 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 2 },
          { "AlphaNeovimLogoGreenFBlueB", 2, 4 },
          { "AlphaNeovimLogoGreen", 4, 19 },
          { "AlphaNeovimLogoBlue", 27, 40 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 4 },
          { "AlphaNeovimLogoGreenFBlueB", 4, 7 },
          { "AlphaNeovimLogoGreen", 7, 22 },
          { "AlphaNeovimLogoBlue", 29, 42 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 8 },
          { "AlphaNeovimLogoGreenFBlueB", 8, 10 },
          { "AlphaNeovimLogoGreen", 10, 25 },
          { "AlphaNeovimLogoBlue", 31, 44 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 10 },
          { "AlphaNeovimLogoGreenFBlueB", 10, 13 },
          { "AlphaNeovimLogoGreen", 13, 28 },
          { "AlphaNeovimLogoBlue", 33, 46 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 14, 31 },
          { "AlphaNeovimLogoBlue", 35, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 16, 32 },
          { "AlphaNeovimLogoBlue", 35, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 17, 33 },
          { "AlphaNeovimLogoBlue", 35, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 18, 34 },
          { "AlphaNeovimLogoGreenFBlueB", 33, 35 },
          { "AlphaNeovimLogoBlue", 35, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 19, 35 },
          { "AlphaNeovimLogoGreenFBlueB", 34, 35 },
          { "AlphaNeovimLogoBlue", 35, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 20, 36 },
          { "AlphaNeovimLogoGreenFBlueB", 35, 37 },
          { "AlphaNeovimLogoBlue", 37, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 0, 13 },
          { "AlphaNeovimLogoGreen", 21, 37 },
          { "AlphaNeovimLogoGreenFBlueB", 36, 37 },
          { "AlphaNeovimLogoBlue", 37, 49 },
        },
        {
          { "AlphaNeovimLogoBlue", 1, 13 },
          { "AlphaNeovimLogoGreen", 20, 35 },
          { "AlphaNeovimLogoBlue", 37, 48 },
        },
        {},
        { { "AlphaNeovimLogoGreen", 0, 9 }, { "AlphaNeovimLogoBlue", 9, 18 } },
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  { "wakatime/vim-wakatime", lazy = false },
  { "nvim-telescope/telescope.nvim", lazy = false },
  -- { "epwalsh/obsidian.nvim", lazy = false },
  {
    "nfrid/markdown-togglecheck",
    dependencies = { "nfrid/treesitter-utils" },
    ft = { "markdown" },
  },
  {
    "lervag/vimtex",
    lazy = false,
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        autocmds = {
          vimtex_mapping_descriptions = {
            {
              event = "FileType",
              desc = "Set up VimTex Which-Key descriptions",
              pattern = "tex",
              callback = function(event)
                local wk_avail, wk = pcall(require, "which-key")
                if not wk_avail then return end
                local opts = {
                  mode = "n", -- NORMAL mode
                  buffer = event.buf, -- Specify a buffer number for buffer local mappings to show only in tex buffers
                }
                local mappings = {
                  ["<localleader>l"] = {
                    name = "+VimTeX",
                    a = "Show Context Menu",
                    C = "Full Clean",
                    c = "Clean",
                    e = "Show Errors",
                    G = "Show Status for All",
                    g = "Show Status",
                    i = "Show Info",
                    I = "Show Full Info",
                    k = "Stop VimTeX",
                    K = "Stop All VimTeX",
                    L = "Compile Selection",
                    l = "Compile",
                    m = "Show Imaps",
                    o = "Show Compiler Output",
                    q = "Show VimTeX Log",
                    s = "Toggle Main",
                    t = "Open Table of Contents",
                    T = "Toggle Table of Contents",
                    v = "View Compiled Document",
                    X = "Reload VimTeX State",
                    x = "Reload VimTeX",
                  },
                  ["ts"] = {
                    name = "VimTeX Toggles & Cycles", -- optional group name
                    ["$"] = "Cycle inline, display & numbered equation",
                    c = "Toggle star of command",
                    d = "Cycle (), \\left(\\right) [,...]",
                    D = "Reverse Cycle (), \\left(\\right) [, ...]",
                    e = "Toggle star of environment",
                    f = "Toggle a/b vs \\frac{a}{b}",
                  },
                  ["[/"] = "Previous start of a LaTeX comment",
                  ["[*"] = "Previous end of a LaTeX comment",
                  ["[["] = "Previous beginning of a section",
                  ["[]"] = "Previous end of a section",
                  ["[m"] = "Previous \\begin",
                  ["[M"] = "Previous \\end",
                  ["[n"] = "Previous start of a math zone",
                  ["[N"] = "Previous end of a math zone",
                  ["[r"] = "Previous \\begin{frame}",
                  ["[R"] = "Previous \\end{frame}",
                  ["]/"] = "Next start of a LaTeX comment %",
                  ["]*"] = "Next end of a LaTeX comment %",
                  ["]["] = "Next beginning of a section",
                  ["]]"] = "Next end of a section",
                  ["]m"] = "Next \\begin",
                  ["]M"] = "Next \\end",
                  ["]n"] = "Next start of a math zone",
                  ["]N"] = "Next end of a math zone",
                  ["]r"] = "Next \\begin{frame}",
                  ["]R"] = "Next \\end{frame}",
                  ["cs"] = {
                    c = "Change surrounding command",
                    e = "Change surrounding environment",
                    ["$"] = "Change surrounding math zone",
                    d = "Change surrounding delimiter",
                  },
                  ["ds"] = {
                    c = "Delete surrounding command",
                    e = "Delete surrounding environment",
                    ["$"] = "Delete surrounding math zone",
                    d = "Delete surrounding delimiter",
                  },
                }
                wk.register(mappings, opts)
                -- VimTeX Text Objects without variants with targets.vim
                opts = {
                  mode = "o", -- Operator pending mode
                  buffer = event.buf,
                }
                local objects = {
                  ["ic"] = [[LaTeX Command]],
                  ["ac"] = [[LaTeX Command]],
                  ["id"] = [[LaTeX Math Delimiter]],
                  ["ad"] = [[LaTeX Math Delimiter]],
                  ["ie"] = [[LaTeX Environment]],
                  ["ae"] = [[LaTeX Environment]],
                  ["i$"] = [[LaTeX Math Zone]],
                  ["a$"] = [[LaTeX Math Zone]],
                  ["iP"] = [[LaTeX Section, Paragraph, ...]],
                  ["aP"] = [[LaTeX Section, Paragraph, ...]],
                  ["im"] = [[LaTeX Item]],
                  ["am"] = [[LaTeX Item]],
                }
                wk.register(objects, opts)
              end,
            },
          },
        },
      },
    },
  },
  -- with lazy.nvim

  {
    "glepnir/template.nvim",
    cmd = { "Template", "TemProject" },
    config = function()
      require("template").setup {
        -- config in there
      }
    end,
  },
  -- {
  --   "williamboman/mason.nvim",
  --   "williamboman/mason-lspconfig.nvim",
  --   "neovim/nvim-lspconfig",
  -- },
  -- lazy load you can use cmd or ft. if you are using cmd to lazyload when you edit the template file
  -- you may see some diagnostics in template file. use ft to lazy load the diagnostic not display
  -- when you edit the template file.
}
