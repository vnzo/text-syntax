# text-syntax

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
