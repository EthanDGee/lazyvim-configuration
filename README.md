# 💤 LazyVim

My personal LazyVim config (branded "Honky-Vim").

## Plugins

This configuration includes several custom plugins to enhance functionality.

- **[typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim)**: Adds a live preview for Typst files, toggled with `<leader>cp`. Preview follows the cursor.
- [**PDFview.nvim**](https://github.com/basola21/PDFview): Extracts formatted text to view PDFs in loaded buffers. Any `.pdf` buffer is opened with it automatically. Page navigation with `<leader>jj` (next) and `<leader>kk` (previous). Requires `pdftotext`.
- **[blink.cmp](https://github.com/saghen/blink.cmp)**: Completion with custom key mappings — `<Tab>` selects and accepts, arrows / `<C-p>` / `<C-n>` navigate, `<CR>` behaves like a normal Enter.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Auto completion confirmation remapped from `<CR>` to `<Tab>`.
- **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: GitHub Copilot with inline suggestions disabled (chat window only, no code generation).
- **[snacks.nvim](https://github.com/folke/snacks.nvim)**: Picker configured to show ignored files. Also drives the dashboard (see Theming).
- [**triforce.nvim**](https://github.com/gisketch/triforce.nvim): Adds an xp/reward system for stats tracking, opened with `<leader>cX`. Tuned with custom xp rewards, higher leveling requirements, and extra long-term achievements.
- [transparent.nvim](https://github.com/xiyaowong/transparent.nvim): Makes Neovim transparent with a toggle (`<leader>ut`). Extra highlight groups cleared for BufferLine, NeoTree, and WhichKey.
- [exercism.nvim](https://github.com/2kabhishek/exercism.nvim): Local exercism practice problem handling within Neovim (requires the exercism CLI). Keymaps under `<leader>cx` — `a` languages, `l` list, `t` test, `r` submit.
- [vimtex](https://github.com/lervag/vimtex): LaTeX support using `zathura` as the PDF viewer. Compile/view/error keymaps under `<leader>c` in TeX buffers.
- **HTML/CSS**: Treesitter parsers plus the `html` language server and `emmet_language_server` for snippet expansion (including in React, Vue, and Svelte files).
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: Statusline with a clock in the `z` section.

## Theming

[transparent.nvim](https://github.com/xiyaowong/transparent.nvim) makes Neovim transparent, and many themes are installed for easy switching to match various lighting/desktop background changes. The default color scheme is `tokyonight` (moon style), with these extra themes available:

- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) — dark / high contrast
- [rose-pine](https://github.com/rose-pine/neovim) — low-fi, cozy, minimalist
- [everforest](https://github.com/sainnhe/everforest) — nature-based green and earthy tones
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) — sharp and modern (Nordfox, Terafox, etc.)
- [cyberdream.nvim](https://github.com/scottmckendry/cyberdream.nvim) — high-contrast, futuristic neon

The Dashboard header reflects the Honky-Vim branding, showing a mother goose followed by their flock as they walk across the header letters.

Random "splash texts" appear under the header on each launch, covering a variety of topics such as geese, racing, and programming humor.

## Languages

This configuration applies specific formatting rules for different languages via `after/ftplugin`.

- **C, Java & C#**: 4 space indentation (C# forces spaces over tabs).
- **JavaScript & TypeScript**: 2 space indentation.
- **KDL**: 4 space indentation.
- **Lisp**: Auto-pairing for single quotes is disabled.
- **TeX**: 4 space indentation, soft word wrapping, and a "ventilated prose" setup (auto-formatting disabled, no hard wrapping). Vimtex keymaps for compile, view, errors, clean, word count, and toggling symbol conceal.
- **Markdown**: 4 space indentation with soft word wrapping.
- **Rust**: `<leader>cD` keymaps to open local `rustup` docs (book, std, reference, cargo, nomicon, and more).

## Spelling

- Spell checking is enabled by default (`en_us`).
- Two spell files are used: a global one in the config and a project-local `.spell.utf-8.add`.
- `zl` (`2zg`) adds a word to the project-local list.

## LazyVim Defaults

These LazyVim defaults are overridden.

- **Keymaps**:
  - `jj` maps to `<esc>` in insert mode for better ergonomics.
- **Options**:
  - Relative line numbers are enabled.
  - The cursor can be placed one character beyond the end of a line (`virtualedit = onemore`).
  - The cursor can wrap around line endings.
  - Project-local config files are trusted (`exrc`).
- **Plugin Manager (`lazy.nvim`)**:
  - Custom plugins are not lazy-loaded by default.
  - The default color scheme is `tokyonight`.
  - Plugin updates are checked periodically (without notifications).
  - Several default runtime plugins are disabled for better performance (`gzip`, `tarPlugin`, `tohtml`, `tutor`, `zipPlugin`).
