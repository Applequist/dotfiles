# Dotfiles

A repository to save various tool configurations.

## Usage

1. checkout repository
2. run `apply.sh` from your local repository.

## Configs

### Neovim

The Neovim configuration uses `lazy.nvim` as plugin manager and is divided into 2 main parts:
- lua/config: to initialize base options, keybinding and plugins (bootstrap and configure lazy,nvim)
- lua/plugins: to configure all additional plugins. This section further divided into a base section and additional sub-topics:
  - base: utility and common general dependencies
  - topics:
    - ui: plugins providing general UI enhancements outside the buffers, eg lualine for statusline,
          neotree for file tree navigation (and more)...
    - editor: for general text editing enhancements, eg navigation in and between files, eg telescope, treesitter...
    - lsp: for general LSP server configurations
    - cmp: for general completion configuration, eg nvim-cmmp, luasnip...
    - coding: for general coding tools configuraion, eg test runner, debugging...
    - <lang>: per language specific configuration

#### UI Plugins

- "nvim-tree/nvim-web-devicons":
- "MunifTanjim/nui.nvim": required by "nvim-neo-tree/neo-tree.nvim"
- "nvim-lualine/lualine.nvim":
- 'nvim-neo-tree/neo-tree.nvim":

| Keybinding | Action |
|------------|--------|
| <leader>fe | Toggle [F]ile [E]xplorer |

