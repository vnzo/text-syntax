markdown

# text-syntax

Custom syntax highlighting for plain text (`.txt`) files in **Vim** and **Neovim**.

It gives you high-contrast colors for:
- Nested brackets `() [] {}` (including Chinese full-width brackets)
- Chinese numerals
- Quotes (English + Chinese)
- Titles, lists, comments
- Numbers, punctuation, URLs, and icons

---

## Screenshots

| Overview | Nesting & Brackets | Quotes & Numbers |
|:---:|:---:|:---:|
| ![Demo 1](images/autumn.JPG) | ![Demo 2](images/forest.JPG) | ![Demo 3](images/garden.JPG) |

---

## Features

- Different highlight colors for nested brackets `()`, `[]`, `{}`
- Chinese number highlighting
- Smart quote support (`" "`, `“ ”`, `‘ ’`)
- Keywords: `TODO`, `FIXME`, `NOTE`, `ERROR`, etc.
- Comment lines starting with `#`
- Titles and bullet lists
- URL and email highlighting
- Three built-in colorschemes: `autumn`, `forest`, `garden`

---

## Installation

### 1. Using lazy.nvim (Recommended)

Open your Neovim configuration file (usually `~/.config/nvim/lua/plugins.lua` or similar) and add the following code inside your plugin list:

```lua
{
  "vnzo/text-syntax",
}

Example of how it should look:lua

require("lazy").setup({
  -- other plugins here...

  {
    "vnzo/text-syntax",
  },
})

Then restart Neovim or run :Lazy sync.2. Using vim-plugAdd this line to your ~/.vimrc or init.vim:vim

Plug 'vnzo/text-syntax'

Then run:vim

:PlugInstall

3. Manual InstallationIf you don’t use a plugin manager, you can install it manually.On Linux / macOS (Neovim):bash

git clone https://github.com/vnzo/text-syntax.git ~/.local/share/nvim/site/pack/plugins/start/text-syntax

On Linux / macOS (Vim):bash

git clone https://github.com/vnzo/text-syntax.git ~/.vim/pack/plugins/start/text-syntax

On Windows (Neovim):Clone the repository into this folder:

%LOCALAPPDATA%\nvim-data\site\pack\plugins\start\text-syntax\

After cloning, restart Vim or Neovim.How to UseOpen any .txt file.
The syntax highlighting should activate automatically.
(Recommended) Choose one of the included colorschemes for the best look:

vim

:colorscheme autumn

Other available themes:vim

:colorscheme forest
:colorscheme garden

You can also set a default theme in your config file:vim

colorscheme autumn

ColorschemesThis plugin comes with three carefully designed dark themes:Theme
Style
autumn
Warm and high-contrast
forest
Cooler green tone
garden
Soft and balanced

Just type :colorscheme followed by the name to switch.LicenseMIT

