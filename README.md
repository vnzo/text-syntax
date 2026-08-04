Markdown

# text-syntax.nvim

Custom syntax highlighting engine for plain text files (`.txt`), featuring high-contrast formatting for structural blocks, brackets, Chinese numerals, and math numbers.

## Screenshots

![Syntax Overview](images/autumu.jpg)
![Bracket Nesting](images/forest.jpg)
![Chinese Numerals & Quotes](images/garden.jpg)

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

    Portable Alternative: [Your-Portable-Folder]\data\site\pack\plugins\start\text-syntax\# text-syntax

A clean, modern, and highly readable syntax highlighting plugin for plain text (`.txt`) files in Vim and Neovim.

## Installation

### Using a Plugin Manager (Recommended)

Add the appropriate line to your plugin configuration block and run your manager's install command:

#### **[vim-plug](https://github.com/junegunn/vim-plug)**

```vim
Plug 'vnzo/text-syntax'

```

#### **[lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
{ "vnzo/text-syntax" }

```

---

### or Native Package System (No manager required)

If you prefer using Vim's native pack system, clone this repository into your start folder:

#### **Vim**

* **Windows:** `~\vimfiles\pack\plugins\start\text-syntax`
* **Linux/macOS:** `~/.vim/pack/plugins/start/text-syntax`

#### **Neovim**

* **Windows:** `~\AppData\Local\nvim\pack\plugins\start\text-syntax`
* **Linux/macOS:** `~/.local/share/nvim/site/pack/plugins/start/text-syntax`

---

### or Manual Installation

If you prefer to install files manually without using packages, copy the `syntax/text.vim` file directly into your runtime configuration directory:

* **Vim (Windows):** `~\vimfiles\syntax\`
* **Vim (Linux/macOS):** `~/.vim/syntax/`
* **Neovim (Windows):** `~\AppData\Local\nvim\syntax\`
* **Neovim (Linux/macOS):** `~/.config/nvim/syntax/`
