markdown

# text-syntax

Custom syntax highlighting for plain text (`.txt`) files in Vim / Neovim.

Designed for high-contrast readability with special support for:
- Nested brackets `() [] {}` (including full-width Chinese variants)
- Chinese numerals
- Quotes (English + Chinese)
- Structural blocks, lists, and titles
- Numbers, punctuation, URLs, and common icons

## Screenshots

| Overview | Nesting & Brackets | Quotes & Numbers |
|:---:|:---:|:---:|
| ![Demo 1](images/autumn.JPG) | ![Demo 2](images/forest.JPG) | ![Demo 3](images/garden.JPG) |

## Features

- **Nested brackets** with different highlight groups for `()`, `[]`, and `{}`
- **Chinese number highlighting** (both line-start and inline)
- **Smart quotes** support (`" "`, `“ ”`, `‘ ’`)
- **Keywords**: `TODO`, `FIXME`, `NOTE`, `ERROR`, etc.
- **Comments** (`#`), titles, and list markers
- **URLs** and email headers
- **Icons / emoji** highlighting
- Three dedicated colorschemes: `autumn`, `forest`, `garden`

## Installation

### lazy.nvim (Recommended)

```lua
{
  "vnzo/text-syntax",
  -- optional: force load on txt files
  ft = "text",
}

vim-plugvim

Plug 'vnzo/text-syntax'

Manual InstallationClone the repository into your pack directory:Neovimbash

git clone https://github.com/vnzo/text-syntax.git \
  ~/.local/share/nvim/site/pack/plugins/start/text-syntax

Vimbash

git clone https://github.com/vnzo/text-syntax.git \
  ~/.vim/pack/plugins/start/text-syntax

Windows (Neovim)

%LOCALAPPDATA%\nvim-data\site\pack\plugins\start\text-syntax\

UsageOpen any .txt file — the syntax should activate automatically.
Choose a colorscheme (optional but recommended):

vim

colorscheme autumn   " or forest / garden

You can also put this in your config:vim

" Force the syntax for text files
autocmd FileType text setlocal syntax=text

# text-syntax

Custom syntax highlighting for plain text (`.txt`) files in Vim / Neovim.

Designed for high-contrast readability with special support for:
- Nested brackets `() [] {}` (including full-width Chinese variants)
- Chinese numerals
- Quotes (English + Chinese)
- Structural blocks, lists, and titles
- Numbers, punctuation, URLs, and common icons

## Screenshots

| Overview | Nesting & Brackets | Quotes & Numbers |
|:---:|:---:|:---:|
| ![Demo 1](images/autumn.JPG) | ![Demo 2](images/forest.JPG) | ![Demo 3](images/garden.JPG) |

## Features

- **Nested brackets** with different highlight groups for `()`, `[]`, and `{}`
- **Chinese number highlighting** (both line-start and inline)
- **Smart quotes** support (`" "`, `“ ”`, `‘ ’`)
- **Keywords**: `TODO`, `FIXME`, `NOTE`, `ERROR`, etc.
- **Comments** (`#`), titles, and list markers
- **URLs** and email headers
- **Icons / emoji** highlighting
- Three dedicated colorschemes: `autumn`, `forest`, `garden`

## Installation

### lazy.nvim (Recommended)

```lua
{
  "vnzo/text-syntax",
  -- optional: force load on txt files
  ft = "text",
}Markdown

# text-syntax

Custom syntax highlighting engine for plain text files (`.txt`), featuring high-contrast formatting for structural blocks, brackets, Chinese numerals, and math numbers.

## Screenshots

| Overview | Nesting & Brackets | Quotes & Numbers |
| :---: | :---: | :---: |
| ![Demo 1](images/autumu.jpg) | ![Demo 2](images/forest.jpg) | ![Demo 3](images/garden.jpg) |

---

## Installation

### 1. Plugin Managers (Recommended)

#### **lazy.nvim**
```lua
{
    "vnzo/text-syntax",
}

vim-plug
Vim Script

Plug 'vnzo/text-syntax'

2. Manual Installation (Pack System)

Clone or copy this repository directly into your runtime package directories:
Linux (Neovim / Vim)

    Neovim: ~/.local/share/nvim/site/pack/plugins/start/text-syntax/

    Vim: ~/.vim/pack/plugins/start/text-syntax/

Windows (Neovim Pack System)

    Path: %LOCALAPPDATA%\nvim-data\site\pack\plugins\start\text-syntax\

    Portable Alternative: [Your-Portable-Folder]\data\site\pack\plugins\start\text-syntax\
