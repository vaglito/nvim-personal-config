# Neovim Configuration

Personal Neovim setup powered by `lazy.nvim`.

## Keymaps

`<leader>` is the Space key. The table documents custom mappings configured by this repository; plugin defaults are not included.

### Editor

| Mode | Keymap | Action |
| --- | --- | --- |
| Normal | `gb` | Go to the next buffer. |
| Normal | `gB` | Go to the previous buffer. |
| Normal | `gd` | Delete the current buffer. |
| Normal, Visual | `<leader>f` | Format the file or selected range asynchronously through Conform, falling back to the LSP. |

### Navigation and search

| Mode | Keymap | Action |
| --- | --- | --- |
| Normal | `<leader><Space>` | Open Snacks Smart Find Files. Hidden files are included. |
| Normal | `<leader>,` | Open the Snacks buffer picker. |
| Normal | `<leader>/` | Search with Snacks Grep. |
| Normal | `<leader>e` | Open Snacks Explorer. Hidden files are included. |

### Terminals and Git

| Mode | Keymap | Action |
| --- | --- | --- |
| Normal | `<leader>cx` | Toggle the Codex floating terminal in the current file's directory. |
| Terminal | `<C-x>` | Toggle the Codex terminal while preserving its history. |
| Normal | `<leader>tt` | Toggle a floating terminal in the current file's directory. |
| Terminal | `<C-t>` | Toggle the current Snacks terminal. |
| Normal | `<leader>lg` | Open LazyGit. |
