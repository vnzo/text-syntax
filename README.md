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

Open your Neovim configuration file (usually `~/.config/nvim/lua/plugins.lua` or your main plugin file) and **add the following code** inside your plugin list:

```lua
{
  "vnzo/text-syntax",
}
```

**Example** of how the full section should look:

```lua
require("lazy").setup({
  -- other plugins...

  {
    "vnzo/text-syntax",
  },
})
```

Then restart Neovim or run `:Lazy sync`.

---

### 2. Using vim-plug

Add this line to your `~/.vimrc` or `init.vim`:

```vim
Plug 'vnzo/text-syntax'
```

Then open Vim/Neovim and run:

```vim
:PlugInstall
```

---

### 3. Manual Installation

If you don’t use a plugin manager, clone the repository into the correct folder.

**Linux / macOS (Neovim):**

```bash
git clone https://github.com/vnzo/text-syntax.git ~/.local/share/nvim/site/pack/plugins/start/text-syntax
```

**Linux / macOS (Vim):**

```bash
git clone https://github.com/vnzo/text-syntax.git ~/.vim/pack/plugins/start/text-syntax
```

**Windows (Neovim):**

Clone the repository into this folder:

```
%LOCALAPPDATA%\nvim-data\site\pack\plugins\start\text-syntax\
```

After cloning, restart Vim or Neovim.

---

## How to Use

1. Open any `.txt` file.  
   The syntax highlighting should activate automatically.

2. For the best look, switch to one of the included colorschemes by typing:

```vim
:colorscheme autumn
```

Other available themes:

```vim
:colorscheme forest
:colorscheme garden
```

You can also set a default theme in your configuration file:

```vim
colorscheme autumn
```

---

## Colorschemes

This plugin comes with three carefully designed dark themes:

| Theme    | Style                     |
|----------|---------------------------|
| `autumn` | Warm and high-contrast    |
| `forest` | Cooler green tone         |
| `garden` | Soft and balanced         |

Just type `:colorscheme` followed by the name to switch.

---

## License

MIT
