![Kimbox](https://lmburns.com/gallery/media/large/kimbox-rust.png)

Kimbox is a dark colorscheme for Neovim with builtin treesitter support. It is my variation of the  [original `Kimbie Dark` colorscheme](https://marketplace.visualstudio.com/items?itemName=dnamsons.kimbie-dark-plus).

The colors may look duller in the images provided, though they will not be whenever the colorscheme is actually loaded. I've noticed that many other colorschemes seem brighter than what their images show.

## Installation

- vim-plug
```vim
Plug 'lmburns/kimbox'

colorscheme kimbox
```

- Packer
```lua
use({"lmburns/kimbox", config = [[require("kimbox").load()]]})
-- or
use({
    "lmburns/kimbox",
    config = function()
        require("kimbox").setup({
            -- options
        })
        require("kimbox").load()
        -- or
        vim.cmd("colorscheme kimbox")
    end,
})
```

- Bufferline
```lua
-- Colors can be accessed with
local c = require("kimbox.bufferline").colors()

-- Theme itself
local t = require("kimbox.bufferline").theme()

require("bufferline").setup({
  -- configuration stuff
  highlights = require("kimbox.bufferline").theme()
})
```

- Lualine
```lua
-- Colors can be accessed with
local c = require("kimbox.lualine").colors()

-- Theme itself
local t = require("kimbox.lualine").theme()

require("lualine").setup({
  -- configuration stuff
  theme = 'kimbox' -- 'auto' works as well
})
```

## Color

| #39260E                                                             | #291804                                                                 | #EF1D55                                                             | #DC3958                                                             | #FF5813                                                             | #FF9500                                                             | #819C3B                                                             |
| ---------------------------------------------------------------     | ---------------------------------------------------------------         | ---------------------------------------------------------------     | ---------------------------------------------------------------     | ---------------------------------------------------------------     | ---------------------------------------------------------------     | ---------------------------------------------------------------     |
| ![#39260E](https://via.placeholder.com/80/39260E/000000.png?text=+) | ![#291804](https://via.placeholder.com/80/291804.png/000000.png?text=+) | ![#EF1D55](https://via.placeholder.com/80/EF1D55/000000.png?text=+) | ![#DC3958](https://via.placeholder.com/80/DC3958/000000.png?text=+) | ![#FF5813](https://via.placeholder.com/80/FF5813/000000.png?text=+) | ![#FF9500](https://via.placeholder.com/80/FF9500/000000.png?text=+) | ![#819C3B](https://via.placeholder.com/80/819C3B/000000.png?text=+) |
| #7EB2B1                                                             | #4C96A8                                                                 | #98676A                                                             | #A06469                                                             | #7F5D38                                                             | #A89984                                                             | #D9AE80                                                             |
| ![#7EB2B1](https://via.placeholder.com/80/7EB2B1/000000.png?text=+) | ![#4C96A8](https://via.placeholder.com/80/4C96A8/000000.png?text=+)     | ![#98676A](https://via.placeholder.com/80/98676A/000000.png?text=+) | ![#A06469](https://via.placeholder.com/80/A06469/000000.png?text=+) | ![#7F5D38](https://via.placeholder.com/80/7F5D38/000000.png?text=+) | ![#A89984](https://via.placeholder.com/80/A89984/000000.png?text=+) | ![#D9AE80](https://via.placeholder.com/80/D9AE80/000000.png?text=+) |

## Options (Lua)

```lua
-- These options can also be set using:
vim.g.kimbox_config = {
  -- ...options from above
}

require("kimbox").setup({
    ---Background color:
    ---    burnt_coffee : #231A0C   -- legacy: "medium"
    ---    cannon       : #221A02   -- legacy: "ocean"
    ---    used_oil     : #221A0F   -- legacy: "vscode"
    ---    deep         : #0F111B
    ---    zinnwaldite  : #291804   -- legacy: "darker"
    ---    eerie        : #1C0B28
    style = "cannon",
    ---Allow changing background color
    toggle_style = {
        ---Key used to cycle through the backgrounds in `toggle_style.bgs`
        key = "<Leader>ts",
        ---List of background names
        bgs = require("kimbox.config").bg_colors
    },
    ---New Lua-Treesitter highlight groups
    ---See below (New Lua Treesitter Highlight Groups) for an explanation
    ---  Location where Treesitter capture groups changed to '@capture.name'
    ---  Commit:    030b422d1
    ---  Vim patch: patch-8.2.0674
    langs08 = true,
    ---Used with popup menus (coc.nvim mainly) --
    popup = {
        background = false, -- use background color for PMenu
    },
    -- ━━━ Plugin Related ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    diagnostics = {
        background = true, -- use background color for virtual text
    },
    -- ━━━ General Formatting ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    allow_bold = true,
    allow_italic = false,
    allow_underline = false,
    allow_undercurl = true,
    allow_reverse = false,
    transparent = false,   -- don't set background
    term_colors = true,    -- if true enable the terminal
    ending_tildes = false, -- show the end-of-buffer tildes
    -- ━━━ Custom Highlights ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    ---Override default colors
    ---@type table<string, string>
    colors = {},
    ---Override highlight groups
    ---@type table<string, KimboxHighlightMap>
    highlights = {},
    ---Plugins and langauges that can be disabled
    ---To view options: print(require("kimbox.highlights").{langs,langs08,plugins})
    ---@type {langs: string[], langs08: string[], plugins: string[]}
    disabled = {
        ---Disabled languages
        ---@see KimboxHighlightLangs
        langs = {},
        ---Disabled languages with '@' treesitter highlights
        ---@see KimboxHighlightLangs08
        langs08 = {},
        ---Disabled plugins
        ---@see KimboxHighlightPlugins
        plugins = {},
    },
    ---Run a function before the colorscheme is loaded
    ---@type fun(): nil
    run_before = nil,
    ---Run a function after the colorscheme is loaded
    ---@type fun(): nil
    run_after = nil,
})

require("kimbox").load()
```

### Options (vimscript)

```vim
" an example
let g:kimbox_config = #{
    \ style: 'cannon',
    \ toggle_style: #{
    \   key: '<Leader>ts',
    \   bgs: [
    \     'burnt_coffee',
    \     'cannon',
    \     'used_oil',
    \     'deep',
    \     'zinnwaldite',
    \     'eerie',
    \   ]
    \ },
    \ langs08: v:false,
    \ diagnostics: #{background: v:true},
    \ popup:       #{background: v:false},
    \ allow_bold: v:true,
    \ allow_italic: v:false,
    \ allow_underline: v:false,
    \ allow_undercurl: v:true,
    \ allow_reverse: v:false,
    \ transparent: v:false,
    \ term_colors: v:true,
    \ ending_tildes: v:false,
    \ colors: [],
    \ highlights: [],
    \ disabled: #{
    \   langs:   [],
    \   langs08: [],
    \   plugins: [],
    \ },
    \ run_before: v:null,
    \ run_after: v:null,
    \ }

colorscheme kimbox
```

### Overriding highlight groups

```lua
require("kimbox").setup({
    colors = {
        bright_orange = "#ff8800", -- define a new color
        green = "#77A172",         -- redefine an existing color
        myblue = "#418292",
    },
    highlights = {
        TSKeyword = {fg = "$green"},
        TSString = {fg = "$bright_orange", bg = "#FF5813", gui = "bold"},
        TSFunction = {fg = "#88C0D0", sp = "$aqua", gui = "underline,italic"},
        ["@function.macro.lua"] = {fg = "$myblue", sp = "$aqua", gui = "underline,italic"},
    },
})
```

## New Lua Treesitter Highlight Groups

See `:h lua-treesitter-highlight-groups` for a full explanation.

After the commit `030b422d1`, highlight groups were changed in the following pattern:
* `luaTSFunction` => `@function.lua`
* `vimdocTSTitle` => `@text.title.vimdoc`
* etc.

This feature will **not yet be enabled by default**. If you wish to use this colorscheme and wish to have the exact same colors as the highlight groups that were present before the aforementioned commit, set the configuration feature `langs08` to `true` in your configuration. This feature will eventually be this colorschemes default settings.

## Filetype Support

Treesitter is preferred for most file types (not Zsh).
All of the following languages have been manually configured.

<details>
<summary>Support</summary>

- Awk
- Bash/Dash
- C/C++
- Clojure
- CoffeeScript
- Dart
- Elixir
- Erlang
- Go
- Haskell
- HTML
- Javascript
- JavascriptReact TypescriptReact
- Kotlin
- Lua
- OCaml
- ObjectiveC
- PHP
- Perl
- Python
- R
- Ruby
- Rust
- Scala
- Sed
- Solidity
- Swift
- Teal
- Typescript
- TypescriptReact (`.tsx`)
- Vimscript
- Zig
- Zsh

- CSS
- SCSS
- GraphQL
- JQ
- Comments
- Vimdoc (Vim help)
- LuaDoc (Lua documentation comments)
- Luap (Lua patterns)
- Query (`.scm`, Treesitter query syntax)
- Regex
- Latex
- Markdown
- Matlab

- sxhkdrc
- CMake
- Makefile
- Git Commit
- Git Config
- Git Ignore
- DosIni (`.ini`)
- JSON
- RON (Rust Object Notation)
- TOML
- YAML

</details>

## Plugin Support
- If any plugin is not supported and you would like for it to be, please let me know.

<details>
<summary>Support</summary>

- [Aerial](https://github.com/stevearc/aerial.nvim)
- [Ale](https://github.com/dense-analysis/ale)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Cmp](https://github.com/hrsh7th/nvim-cmp)
- [Coc-Explorer](https://github.com/weirongxu/coc-explorer)
- [Coc-Git](https://github.com/neoclide/coc-git)
- [Coc.nvim](https://github.com/neoclide/coc.nvim)
- [Cybu](https://github.com/ghillb/cybu.nvim)
- [Dap-UI](https://github.com/rcarriga/nvim-dap-ui)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Defx](https://github.com/Shougo/defx.nvim)
- [DiffView](https://github.com/sindrets/diffview.nvim)
- [EasyMotion](https://github.com/easymotion/vim-easymotion)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [Floaterm](https://github.com/voldikss/vim-floaterm)
- [Fzf-Lua](https://github.com/ibhagwan/fzf-lua)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [HlArgs](https://github.com/m-demare/hlargs.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Incline](https://github.com/b0o/incline.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [Lightspeed](https://github.com/ggandor/lightspeed.nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Marks](https://github.com/chentau/marks.nvim)
- [Modes](https://github.com/mvllow/modes.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [Neomake](https://github.com/neomake/neomake)
- [NerdIcons](https://github.com/glepnir/nerdicons.nvim)
- [NerdTree](https://github.com/preservim/nerdtree)
- [Noice](https://github.com/folke/noice.nvim)
- [Nvim-Notify](https://github.com/rcarriga/nvim-notify)
- [Nvim-R](https://github.com/jalvesaq/Nvim-R)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Registers](https://github.com:tversteeg/registers.nvim)
- [Sneak](https://github.com/justinmk/vim-sneak)
- [Startify](https://github.com/mhinz/vim-startify)
- [Symbols Outline](https://github.com/simrat39/symbols-outline.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Treesitter Treehopper](https://github.com/mfussenegger/nvim-treehopper)
- [Treesitter Rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [Treesitter Rainbow 2](https://github.com/HiPhish/nvim-ts-rainbow2)
- [VimWiki](https://github.com/vimwiki/vimwiki)
- [Vimtex](https://github.com/lervag/vimtex)
- [Vista.vim](https://github.com/liuchengxu/vista.vim)
- [WhichKey](https://github.com/folke/which-key.nvim)
- [dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin)
- [haskell-vim](https://github.com/neovimhaskell/haskell-vim)
- [kotlin-vim](https://github.com/udalov/kotlin-vim)
- [php.vim](https://github.com/StanAngeloff/php.vim)
- [python-syntax](https://github.com/vim-python/python-syntax,)
- [ron.vim](https://github.com/ron-rs/ron.vim)
- [rust.vim](https://github.com/rust-lang/rust.vim)
- [semshi](https://github.com/numirias/semshi,)
- [swift.vim](https://github.com/keith/swift.vim)
- [vim-clojure-static](https://github.com/guns/vim-clojure-static)
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
- [vim-elixir](https://github.com/elixir-editors/vim-elixir)
- [vim-erlang-runtime](https://github.com/vim-erlang/vim-erlang-runtime)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty)
- [vim-ocaml](https://github.com/rgrinberg/vim-ocaml)
- [vim-perl](https://github.com/vim-perl/vim-perl)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
- [vim-scala](https://github.com/derekwyatt/vim-scala)
- [vim-solidity](https://github.com/thesis/vim-solidity)
- [vim-SpellCheck](https://github.com/inkarkat/vim-SpellCheck)
- [vim-typescript](https://github.com/leafgarland/typescript-vim)
- [yajs](https://github.com/othree/yajs.vim,)
- [yats](https:github.com/HerringtonDarkholme/yats.vim)

</details>

### Name
The name came about because I had originally thought I was going to create a combination of the kimbie dark and gruvbox colorschemes. It's too late to change it now.

### Extras
- There is a supplemental TextMate theme in the `extras` directory. This can be used with [`bat`](https://github.com/sharkdp/bat) or SublimeText.
- There are also files which can be used with [`wezterm`](https://github.com/wez/wezterm). One is the theme itself, and the other contains configuration options to setup the theme.

### TODO
- Create some sort of documentation
- Create a compiled version similar to `nightfox`

## Thanks to

- [glepnir/oceanic-material](https://github.com/glepnir/oceanic-material)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
