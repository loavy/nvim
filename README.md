# PinkMath Neovim Config

A minimal fullstack Neovim configuration focused on speed, clean visuals, and practical coding tools.

This setup keeps the essentials:

- Fast fuzzy finding
- LSP support
- Autocompletion
- Treesitter syntax highlighting
- Git signs
- Harpoon file navigation
- Kanagawa colorscheme

No statusline plugin, no auto-pairs, no auto-indentation, no floating terminal plugin, no which-key, and no extra visual clutter.

---

## Preview

Theme: **Kanagawa**

This config uses a calm, dark, minimal look while still being comfortable for fullstack development.

---

## Features

### Core

- Minimal Lua-based Neovim config
- Plugin management with `vim-plug`
- Auto-installs `vim-plug` if missing
- Fast startup-focused structure

### Editor

- Line numbers and relative numbers
- TrueColor support
- System clipboard support
- Persistent undo
- Search highlighting
- No automatic bracket pairs
- No automatic indentation

### Fuzzy Finding

Powered by `fzf-lua`.

Keymaps:

| Keymap | Action |
|---|---|
| `<leader>f` | Find files |
| `<leader>g` | Live grep |
| `<leader>b` | Find buffers |
| `<leader>h` | Help tags |

### Git

Powered by `gitsigns.nvim`.

Keymaps:

| Keymap | Action |
|---|---|
| `]c` | Next Git hunk |
| `[c` | Previous Git hunk |
| `<leader>gs` | Stage hunk |
| `<leader>gr` | Reset hunk |
| `<leader>gS` | Stage buffer |
| `<leader>gR` | Reset buffer |
| `<leader>gp` | Preview hunk |
| `<leader>gb` | Blame line |
| `<leader>gd` | Git diff |

### Harpoon

Powered by Harpoon 2.

Keymaps:

| Keymap | Action |
|---|---|
| `<leader>a` | Add file to Harpoon |
| `<leader>e` | Open Harpoon menu |
| `<leader>1` | Go to Harpoon file 1 |
| `<leader>2` | Go to Harpoon file 2 |
| `<leader>3` | Go to Harpoon file 3 |
| `<leader>4` | Go to Harpoon file 4 |
| `<leader>n` | Next Harpoon file |
| `<leader>p` | Previous Harpoon file |

### LSP

Uses the modern Neovim `vim.lsp.config()` and `vim.lsp.enable()` style for Neovim 0.11+.

Configured for fullstack development:

- Lua
- JavaScript
- TypeScript
- React
- HTML
- CSS
- Tailwind CSS
- Emmet
- JSON
- Python
- Go
- Rust
- PHP
- Bash
- Docker
- Docker Compose
- YAML

Keymaps:

| Keymap | Action |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>d` | Show diagnostic |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Completion

Powered by `nvim-cmp`.

Sources:

- LSP
- Buffer
- Path

Keymaps:

| Keymap | Action |
|---|---|
| `<C-Space>` | Open completion |
| `<CR>` | Confirm selected completion |
| `<Tab>` | Next item |
| `<S-Tab>` | Previous item |
| `<C-e>` | Close completion |

---

## Requirements

- Neovim 0.11+
- Git
- `curl`
- `fzf`
- Node.js and npm
- A terminal with TrueColor support

Optional, depending on the languages you use:

- Python
- Go
- Rust
- PHP
- Docker

---

## Installation

Backup your current Neovim config first:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone this repository:

```bash
git clone git@github.com:PinkMath/Nvim-config.git ~/.config/nvim
```

Or with HTTPS:

```bash
git clone https://github.com/PinkMath/Nvim-config.git ~/.config/nvim
```

Open Neovim:

```bash
nvim
```

Plugins should install automatically on first startup.

If they do not, run:

```vim
:PlugInstall
```

Then restart Neovim.

---

## Mason / LSP Setup

Open Mason:

```vim
:Mason
```

Install the language servers you need:

```text
lua-language-server
typescript-language-server
html-lsp
css-lsp
tailwindcss-language-server
emmet-language-server
json-lsp
pyright
gopls
rust-analyzer
intelephense
bash-language-server
dockerfile-language-server
docker-compose-language-service
yaml-language-server
```

After installing them, restart Neovim and run:

```vim
:checkhealth vim.lsp
```

---

## File Structure

```text
~/.config/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── options.lua
│   │   ├── mappings.lua
│   │   └── autocmd.lua
│   └── plugins/
│       ├── fzf-lua.lua
│       ├── treesitter.lua
│       ├── gitsigns.lua
│       ├── harpoon.lua
│       └── lsp.lua
└── README.md
```

---

## Plugins

| Plugin | Purpose |
|---|---|
| `vim-plug` | Plugin manager |
| `plenary.nvim` | Lua utility dependency |
| `fzf-lua` | Fuzzy finder |
| `nvim-treesitter` | Syntax highlighting |
| `gitsigns.nvim` | Git signs and hunks |
| `harpoon` | Fast file navigation |
| `nvim-lspconfig` | LSP server configs |
| `mason.nvim` | LSP/tool installer |
| `mason-lspconfig.nvim` | Mason/LSP bridge |
| `nvim-cmp` | Completion engine |
| `cmp-nvim-lsp` | LSP completion source |
| `cmp-buffer` | Buffer completion source |
| `cmp-path` | Path completion source |
| `kanagawa.nvim` | Colorscheme |

---

## Design Choices

This config intentionally avoids a few common plugins/features:

- No `nvim-autopairs`
- No `lualine`
- No `which-key`
- No `nvim-tree`
- No floating terminal plugin
- No snippets
- No automatic indentation

The goal is to keep Neovim clean and predictable while still being useful for real fullstack work.

---

## Useful Commands

Install plugins:

```vim
:PlugInstall
```

Remove unused plugins:

```vim
:PlugClean
```

Update plugins:

```vim
:PlugUpdate
```

Update Treesitter parsers:

```vim
:TSUpdate
```

Open Mason:

```vim
:Mason
```

Check LSP health:

```vim
:checkhealth vim.lsp
```

---

## Credits

Inspired by:

- [ThePrimeagen](https://github.com/ThePrimeagen)
- [BreadOnPenguins](https://github.com/BreadOnPenguins)
- [Takuya Matsuyama](https://github.com/craftzdog)

Built for my own minimal fullstack workflow.
