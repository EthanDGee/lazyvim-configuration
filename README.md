# 💤 LazyVim

My personal LazyVim config

## Formatting

This configuration applies specific formatting rules for different languages.

-   **C & Java**: 4 space indentation.
-   **JavaScript & TypeScript**: 2 space indentation.
-   **Lisp**: Autopairing for single quotes is disabled.
-   **TeX**: Soft wrapping is enabled to improve readability of long paragraphs.

## Plugins

This configuration includes several custom plugins to enhance functionality.

-   **[typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim)**: Adds a live preview for Typst files, available with the command `<leader>cp`.
-   **[blink.cmp](https://github.com/saghen/blink.cmp)**: A cmp source with custom keymappings for completion.
-   **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: GitHub Copilot chat window integration for quick double checking (no code editing/generation).
-   **[snacks.nvim](https://github.com/folke/snacks.nvim)**: A plugin for which picker is ignored.

## LazyVim Defaults Changes

Some LazyVim default settings have been modified.

-   **Keymaps**:
    -   `jj` is mapped to `<esc>` in insert mode for better ergonomics.
-   **Options**:
    -   The cursor can be placed one character beyond the end of a line.
    -   The cursor can wrap around line endings.
    -   The default tab width is set 4.
-   **Plugin Manager (`lazy.nvim`)**:
    -   Custom plugins are not lazy-loaded by default.
    -   The default color schemes switched to `tokyonight`.
    -   Several default runtime plugins are disabled for better performance.

