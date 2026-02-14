# 🚀 VaglitoCode

Configuración personal de Neovim (0.11+) optimizada para **TypeScript**, **Python**, **C++** y **DevOps**.

## Plugins

| Plugin                                                                | Descripción            |
| --------------------------------------------------------------------- | ---------------------- |
| [lazy.nvim](https://github.com/folke/lazy.nvim)                       | Gestor de plugins      |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)           | Colorscheme (storm)    |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)          | Barra de estado        |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)       | Explorador de archivos |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)    | Buscador fuzzy         |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting    |
| [conform.nvim](https://github.com/stevearc/conform.nvim)              | Auto-formatter         |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)           | Git gutter signs       |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)            | Auto-cerrar brackets   |
| [which-key.nvim](https://github.com/folke/which-key.nvim)             | Popup de keymaps       |

## LSP Servers

| Servidor                          | Lenguajes                        |
| --------------------------------- | -------------------------------- |
| `ts_ls`                           | TypeScript, JavaScript, TSX, JSX |
| `pyright`                         | Python                           |
| `clangd`                          | C, C++                           |
| `lua_ls`                          | Lua                              |
| `dockerls`                        | Dockerfile                       |
| `docker_compose_language_service` | Docker Compose                   |
| `yamlls`                          | YAML                             |
| `jsonls`                          | JSON, JSONC                      |
| `bashls`                          | Bash, Shell                      |

## Keymaps

### General

| Atajo            | Modo   | Acción                            |
| ---------------- | ------ | --------------------------------- |
| `<Space>`        | —      | Leader key                        |
| `<Space><Space>` | Normal | Source archivo actual (.lua/.vim) |
| `<Space>w`       | Normal | Guardar archivo                   |
| `<Space>q`       | Normal | Salir del archivo                 |
| `Ctrl+H`         | Normal | Ir al split izquierdo             |
| `Ctrl+J`         | Normal | Ir al split inferior              |
| `Ctrl+K`         | Normal | Ir al split superior              |
| `Ctrl+L`         | Normal | Ir al split derecho               |
| `Ctrl+N`         | Normal | Abrir Neo-tree                    |

### LSP

| Atajo        | Modo          | Acción                       |
| ------------ | ------------- | ---------------------------- |
| `gd`         | Normal        | Ir a definición              |
| `gD`         | Normal        | Ir a declaración             |
| `gi`         | Normal        | Ir a implementación          |
| `gr`         | Normal        | Ver referencias              |
| `gt`         | Normal        | Ir a tipo                    |
| `K`          | Normal        | Hover (documentación)        |
| `Ctrl+K`     | Insert        | Ayuda de firma               |
| `Ctrl+Space` | Insert        | Trigger autocompletado       |
| `<Space>rn`  | Normal        | Renombrar símbolo            |
| `<Space>ca`  | Normal/Visual | Code action                  |
| `[d`         | Normal        | Diagnóstico anterior         |
| `]d`         | Normal        | Diagnóstico siguiente        |
| `<Space>e`   | Normal        | Mostrar diagnóstico flotante |
| `<Space>dl`  | Normal        | Lista de diagnósticos        |

### Telescope

| Atajo       | Modo   | Acción                   |
| ----------- | ------ | ------------------------ |
| `Ctrl+P`    | Normal | Buscar archivos          |
| `<Space>fg` | Normal | Live grep (buscar texto) |
| `<Space>fb` | Normal | Buscar buffers           |
| `<Space>fh` | Normal | Help tags                |

### Git (Gitsigns)

| Atajo       | Modo   | Acción         |
| ----------- | ------ | -------------- |
| `]c`        | Normal | Siguiente hunk |
| `[c`        | Normal | Hunk anterior  |
| `<Space>hs` | Normal | Stage hunk     |
| `<Space>hr` | Normal | Reset hunk     |
| `<Space>hp` | Normal | Preview hunk   |
| `<Space>hb` | Normal | Blame de línea |

## Formatters (conform.nvim)

Formateo automático al guardar:

| Lenguaje                                    | Formatter      |
| ------------------------------------------- | -------------- |
| TypeScript/JavaScript/CSS/HTML/JSON/YAML/MD | `prettier`     |
| Python                                      | `black`        |
| C/C++                                       | `clang-format` |
| Lua                                         | `stylua`       |
| Bash                                        | `shfmt`        |
